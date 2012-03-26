package com.unlv.socialspider.shawncannon.facebook.connect;

import javax.inject.Inject;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * 
 * This is the API Binding for facebook and will allow us to post a status update. 
 */

@Controller
public class FacebookFeedController {

	private final Facebook facebook;

	@Inject
	public FacebookFeedController(Facebook facebook) {
		this.facebook = facebook;
	}
	
	@RequestMapping(value="/facebook/feed", method=RequestMethod.POST)
	public String postUpdate(String message) {
		facebook.feedOperations().updateStatus(message);
		return "redirect:/facebook/feed";
	}
	
}