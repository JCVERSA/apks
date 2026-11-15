package org.schabi.newpipe.extractor.playlist;

import defpackage.ok3;
import defpackage.tl5;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

public final class PlaylistInfo extends ListInfo<StreamInfoItem> {
    private List<Image> banners;
    private Description description;
    private PlaylistType playlistType;
    private long streamCount;
    private List<Image> subChannelAvatars;
    private String subChannelName;
    private String subChannelUrl;
    private List<Image> thumbnails;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private String uploaderUrl;

    public enum PlaylistType {
        NORMAL,
        MIX_STREAM,
        MIX_MUSIC,
        MIX_CHANNEL,
        MIX_GENRE
    }

    private PlaylistInfo(int i, ListLinkHandler listLinkHandler, String str) throws ParsingException {
        super(i, listLinkHandler, str);
        this.uploaderUrl = "";
        this.uploaderName = "";
        this.banners = Collections.emptyList();
        this.subChannelAvatars = Collections.emptyList();
        this.thumbnails = Collections.emptyList();
        this.uploaderAvatars = Collections.emptyList();
    }

    public static PlaylistInfo getInfo(String str) throws IOException, ExtractionException {
        return getInfo(org.schabi.newpipe.extractor.a.g(str), str);
    }

    public static tl5.a getMoreItems(StreamingService streamingService, String str, Page page) throws IOException, ExtractionException {
        return streamingService.m(str).t(page);
    }

    public List<Image> getBanners() {
        return this.banners;
    }

    public Description getDescription() {
        return this.description;
    }

    public PlaylistType getPlaylistType() {
        return this.playlistType;
    }

    public long getStreamCount() {
        return this.streamCount;
    }

    public List<Image> getSubChannelAvatars() {
        return this.subChannelAvatars;
    }

    public String getSubChannelName() {
        return this.subChannelName;
    }

    public String getSubChannelUrl() {
        return this.subChannelUrl;
    }

    public List<Image> getThumbnails() {
        return this.thumbnails;
    }

    public List<Image> getUploaderAvatars() {
        return this.uploaderAvatars;
    }

    public String getUploaderName() {
        return this.uploaderName;
    }

    public String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public void setBanners(List<Image> list) {
        this.banners = list;
    }

    public void setDescription(Description description) {
        this.description = description;
    }

    public void setPlaylistType(PlaylistType playlistType) {
        this.playlistType = playlistType;
    }

    public void setStreamCount(long j) {
        this.streamCount = j;
    }

    public void setSubChannelAvatars(List<Image> list) {
        this.subChannelAvatars = list;
    }

    public void setSubChannelName(String str) {
        this.subChannelName = str;
    }

    public void setSubChannelUrl(String str) {
        this.subChannelUrl = str;
    }

    public void setThumbnails(List<Image> list) {
        this.thumbnails = list;
    }

    public void setUploaderAvatars(List<Image> list) {
        this.uploaderAvatars = list;
    }

    public void setUploaderName(String str) {
        this.uploaderName = str;
    }

    public void setUploaderUrl(String str) {
        this.uploaderUrl = str;
    }

    public static PlaylistInfo getInfo(StreamingService streamingService, String str) throws IOException, ExtractionException {
        a aVarM = streamingService.m(str);
        aVarM.b();
        return getInfo(aVarM);
    }

    public static PlaylistInfo getInfo(a aVar) throws ExtractionException {
        PlaylistInfo playlistInfo = new PlaylistInfo(aVar.n(), aVar.s(), aVar.k());
        ArrayList arrayList = new ArrayList();
        try {
            playlistInfo.setOriginalUrl(aVar.l());
        } catch (Exception e) {
            playlistInfo.addError(e);
        }
        try {
            playlistInfo.setStreamCount(aVar.x());
        } catch (Exception e2) {
            playlistInfo.addError(e2);
        }
        try {
            playlistInfo.setDescription(aVar.v());
        } catch (Exception e3) {
            playlistInfo.addError(e3);
        }
        try {
            playlistInfo.setThumbnails(aVar.B());
        } catch (Exception e4) {
            playlistInfo.addError(e4);
        }
        try {
            playlistInfo.setUploaderUrl(aVar.E());
        } catch (Exception e5) {
            arrayList.add(e5);
        }
        try {
            playlistInfo.setUploaderName(aVar.D());
        } catch (Exception e6) {
            arrayList.add(e6);
        }
        try {
            playlistInfo.setUploaderAvatars(aVar.C());
        } catch (Exception e7) {
            arrayList.add(e7);
        }
        try {
            playlistInfo.setSubChannelUrl(aVar.A());
        } catch (Exception e8) {
            arrayList.add(e8);
        }
        try {
            playlistInfo.setSubChannelName(aVar.z());
        } catch (Exception e9) {
            arrayList.add(e9);
        }
        try {
            playlistInfo.setSubChannelAvatars(aVar.y());
        } catch (Exception e10) {
            arrayList.add(e10);
        }
        try {
            playlistInfo.setBanners(aVar.u());
        } catch (Exception e11) {
            playlistInfo.addError(e11);
        }
        try {
            playlistInfo.setPlaylistType(aVar.w());
        } catch (Exception e12) {
            playlistInfo.addError(e12);
        }
        if (!arrayList.isEmpty() && (!playlistInfo.getErrors().isEmpty() || arrayList.size() < 3)) {
            playlistInfo.addAllErrors(arrayList);
        }
        tl5.a aVarA = ok3.a(playlistInfo, aVar);
        playlistInfo.setRelatedItems(aVarA.c());
        playlistInfo.setNextPage(aVarA.d());
        return playlistInfo;
    }
}
