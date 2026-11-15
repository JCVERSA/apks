package defpackage;

import org.schabi.newpipe.extractor.channel.ChannelInfoItem;

public final class au0 extends yz4 {
    public au0(int i) {
        super(i);
    }

    @Override
    public ChannelInfoItem a(zt0 zt0Var) {
        ChannelInfoItem channelInfoItem = new ChannelInfoItem(g(), zt0Var.getUrl(), zt0Var.getName());
        try {
            channelInfoItem.setSubscriberCount(zt0Var.z());
        } catch (Exception e) {
            b(e);
        }
        try {
            channelInfoItem.setStreamCount(zt0Var.d());
        } catch (Exception e2) {
            b(e2);
        }
        try {
            channelInfoItem.setThumbnails(zt0Var.j());
        } catch (Exception e3) {
            b(e3);
        }
        try {
            channelInfoItem.setDescription(zt0Var.getDescription());
        } catch (Exception e4) {
            b(e4);
        }
        try {
            channelInfoItem.setVerified(zt0Var.n());
        } catch (Exception e5) {
            b(e5);
        }
        return channelInfoItem;
    }
}
