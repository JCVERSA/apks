package org.schabi.newpipe.extractor.channel;

import defpackage.us0;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class ChannelInfo extends Info {
    private List<Image> avatars;
    private List<Image> banners;
    private String description;
    private String[] donationLinks;
    private String feedUrl;
    private List<Image> parentChannelAvatars;
    private String parentChannelName;
    private String parentChannelUrl;
    private long subscriberCount;
    private List<ListLinkHandler> tabs;
    private List<String> tags;
    private boolean verified;

    public ChannelInfo(int i, String str, String str2, String str3, String str4) {
        super(i, str, str2, str3, str4);
        this.subscriberCount = -1L;
        this.avatars = Collections.emptyList();
        this.banners = Collections.emptyList();
        this.parentChannelAvatars = Collections.emptyList();
        this.tabs = Collections.emptyList();
        this.tags = Collections.emptyList();
    }

    public static ChannelInfo getInfo(String str) throws IOException, ExtractionException {
        return getInfo(a.g(str), str);
    }

    public List<Image> getAvatars() {
        return this.avatars;
    }

    public List<Image> getBanners() {
        return this.banners;
    }

    public String getDescription() {
        return this.description;
    }

    public String[] getDonationLinks() {
        return this.donationLinks;
    }

    public String getFeedUrl() {
        return this.feedUrl;
    }

    public List<Image> getParentChannelAvatars() {
        return this.parentChannelAvatars;
    }

    public String getParentChannelName() {
        return this.parentChannelName;
    }

    public String getParentChannelUrl() {
        return this.parentChannelUrl;
    }

    public long getSubscriberCount() {
        return this.subscriberCount;
    }

    public List<ListLinkHandler> getTabs() {
        return this.tabs;
    }

    public List<String> getTags() {
        return this.tags;
    }

    public boolean isVerified() {
        return this.verified;
    }

    public void setAvatars(List<Image> list) {
        this.avatars = list;
    }

    public void setBanners(List<Image> list) {
        this.banners = list;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDonationLinks(String[] strArr) {
        this.donationLinks = strArr;
    }

    public void setFeedUrl(String str) {
        this.feedUrl = str;
    }

    public void setParentChannelAvatars(List<Image> list) {
        this.parentChannelAvatars = list;
    }

    public void setParentChannelName(String str) {
        this.parentChannelName = str;
    }

    public void setParentChannelUrl(String str) {
        this.parentChannelUrl = str;
    }

    public void setSubscriberCount(long j) {
        this.subscriberCount = j;
    }

    public void setTabs(List<ListLinkHandler> list) {
        this.tabs = list;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setVerified(boolean z) {
        this.verified = z;
    }

    public static ChannelInfo getInfo(StreamingService streamingService, String str) throws IOException, ExtractionException {
        us0 us0VarA = streamingService.a(str);
        us0VarA.b();
        return getInfo(us0VarA);
    }

    public static ChannelInfo getInfo(us0 us0Var) throws IOException, ExtractionException {
        ChannelInfo channelInfo = new ChannelInfo(us0Var.n(), us0Var.i(), us0Var.p(), us0Var.l(), us0Var.k());
        try {
            channelInfo.setAvatars(us0Var.r());
        } catch (Exception e) {
            channelInfo.addError(e);
        }
        try {
            channelInfo.setBanners(us0Var.s());
        } catch (Exception e2) {
            channelInfo.addError(e2);
        }
        try {
            channelInfo.setFeedUrl(us0Var.u());
        } catch (Exception e3) {
            channelInfo.addError(e3);
        }
        try {
            channelInfo.setSubscriberCount(us0Var.y());
        } catch (Exception e4) {
            channelInfo.addError(e4);
        }
        try {
            channelInfo.setDescription(us0Var.t());
        } catch (Exception e5) {
            channelInfo.addError(e5);
        }
        try {
            channelInfo.setParentChannelName(us0Var.w());
        } catch (Exception e6) {
            channelInfo.addError(e6);
        }
        try {
            channelInfo.setParentChannelUrl(us0Var.x());
        } catch (Exception e7) {
            channelInfo.addError(e7);
        }
        try {
            channelInfo.setParentChannelAvatars(us0Var.v());
        } catch (Exception e8) {
            channelInfo.addError(e8);
        }
        try {
            channelInfo.setVerified(us0Var.B());
        } catch (Exception e9) {
            channelInfo.addError(e9);
        }
        try {
            channelInfo.setTabs(us0Var.z());
        } catch (Exception e10) {
            channelInfo.addError(e10);
        }
        try {
            channelInfo.setTags(us0Var.A());
        } catch (Exception e11) {
            channelInfo.addError(e11);
        }
        return channelInfo;
    }
}
