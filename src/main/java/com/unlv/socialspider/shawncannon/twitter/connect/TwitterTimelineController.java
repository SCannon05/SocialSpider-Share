package com.unlv.socialspider.shawncannon.twitter.connect;

import javax.inject.Inject;

import org.springframework.social.twitter.api.Twitter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TwitterTimelineController {

	private final Twitter twitter;
	
	@Inject
	public TwitterTimelineController(Twitter twitter) {
		this.twitter = twitter;
	}

	@RequestMapping(value="/twitter/tweet", method=RequestMethod.POST)
	public String postTweet(String message) {
		twitter.timelineOperations().updateStatus(message);
		return "redirect:/twitter";
	}

}