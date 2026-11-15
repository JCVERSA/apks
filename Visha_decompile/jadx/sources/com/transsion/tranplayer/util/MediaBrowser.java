package com.transsion.tranplayer.util;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.MainThread;
import com.transsion.tranplayer.LibVLC;
import com.transsion.tranplayer.Media;
import com.transsion.tranplayer.MediaDiscoverer;
import com.transsion.tranplayer.MediaList;
import java.util.ArrayList;
import java.util.Iterator;

public class MediaBrowser {
    private static final String IGNORE_LIST_OPTION = ":ignore-filetypes=";
    private static final String TAG = "MediaBrowser";
    private boolean mAlive;
    private MediaList mBrowserMediaList;
    private final MediaList.EventListener mBrowserMediaListEventListener;
    private final ArrayList<Media> mDiscovererMediaArray;
    private final MediaList.EventListener mDiscovererMediaListEventListener;
    private EventListener mEventListener;
    private Handler mHandler;
    private String mIgnoreList;
    private final LibVLC mLibVlc;
    private Media mMedia;
    private final ArrayList<MediaDiscoverer> mMediaDiscoverers;

    public interface EventListener {
        void onBrowseEnd();

        void onMediaAdded(int i, Media media);

        void onMediaRemoved(int i, Media media);
    }

    public static class Flag {
        public static final int Interact = 1;
        public static final int NoSlavesAutodetect = 2;
        public static final int ShowHiddenFiles = 4;
    }

    public MediaBrowser(LibVLC libVLC, EventListener eventListener) {
        this.mMediaDiscoverers = new ArrayList<>();
        this.mDiscovererMediaArray = new ArrayList<>();
        this.mIgnoreList = "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml";
        this.mBrowserMediaListEventListener = new MediaList.EventListener() {
            @Override
            public void onEvent(MediaList.Event event) {
                if (MediaBrowser.this.mEventListener == null) {
                    return;
                }
                int i = event.type;
                if (i == 512) {
                    MediaBrowser.this.mEventListener.onMediaAdded(event.index, event.media);
                } else if (i == 514) {
                    MediaBrowser.this.mEventListener.onMediaRemoved(event.index, event.media);
                } else {
                    if (i != 516) {
                        return;
                    }
                    MediaBrowser.this.mEventListener.onBrowseEnd();
                }
            }
        };
        this.mDiscovererMediaListEventListener = new MediaList.EventListener() {
            @Override
            public void onEvent(MediaList.Event event) {
                if (MediaBrowser.this.mEventListener == null) {
                    return;
                }
                int i = event.type;
                if (i == 512) {
                    MediaBrowser.this.mDiscovererMediaArray.add(event.media);
                    MediaBrowser.this.mEventListener.onMediaAdded(-1, event.media);
                    return;
                }
                if (i != 514) {
                    if (i != 516) {
                        return;
                    }
                    MediaBrowser.this.mEventListener.onBrowseEnd();
                } else {
                    int iIndexOf = MediaBrowser.this.mDiscovererMediaArray.indexOf(event.media);
                    if (iIndexOf != -1) {
                        MediaBrowser.this.mDiscovererMediaArray.remove(iIndexOf);
                    }
                    if (iIndexOf != -1) {
                        MediaBrowser.this.mEventListener.onMediaRemoved(iIndexOf, event.media);
                    }
                }
            }
        };
        this.mLibVlc = libVLC;
        libVLC.retain();
        this.mEventListener = eventListener;
        this.mAlive = true;
    }

    private void reset() {
        Iterator<MediaDiscoverer> it = this.mMediaDiscoverers.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mMediaDiscoverers.clear();
        this.mDiscovererMediaArray.clear();
        Media media = this.mMedia;
        if (media != null) {
            media.release();
            this.mMedia = null;
        }
        MediaList mediaList = this.mBrowserMediaList;
        if (mediaList != null) {
            mediaList.release();
            this.mBrowserMediaList = null;
        }
    }

    private void startMediaDiscoverer(String str) {
        MediaDiscoverer mediaDiscoverer = new MediaDiscoverer(this.mLibVlc, str);
        this.mMediaDiscoverers.add(mediaDiscoverer);
        MediaList mediaList = mediaDiscoverer.getMediaList();
        mediaList.setEventListener(this.mDiscovererMediaListEventListener, this.mHandler);
        mediaList.release();
        mediaDiscoverer.start();
    }

    @MainThread
    public void browse(String str, int i) {
        Media media = new Media(this.mLibVlc, str);
        browse(media, i);
        media.release();
    }

    @MainThread
    public void changeEventListener(EventListener eventListener) {
        reset();
        this.mEventListener = eventListener;
    }

    @MainThread
    public void discoverNetworkShares() {
        reset();
        MediaDiscoverer.Description[] list = MediaDiscoverer.list(this.mLibVlc, 1);
        if (list == null) {
            return;
        }
        for (MediaDiscoverer.Description description : list) {
            Log.i(TAG, "starting " + description.name + " discover (" + description.longName + ")");
            startMediaDiscoverer(description.name);
        }
    }

    @MainThread
    public Media getMediaAt(int i) {
        if (i < 0 || i >= getMediaCount()) {
            throw new IndexOutOfBoundsException();
        }
        MediaList mediaList = this.mBrowserMediaList;
        Media mediaAt = mediaList != null ? mediaList.getMediaAt(i) : this.mDiscovererMediaArray.get(i);
        mediaAt.retain();
        return mediaAt;
    }

    @MainThread
    public int getMediaCount() {
        MediaList mediaList = this.mBrowserMediaList;
        return mediaList != null ? mediaList.getCount() : this.mDiscovererMediaArray.size();
    }

    @MainThread
    public void release() {
        reset();
        if (!this.mAlive) {
            throw new IllegalStateException("MediaBrowser released more than one time");
        }
        this.mLibVlc.release();
        this.mAlive = false;
    }

    @MainThread
    public void setIgnoreFileTypes(String str) {
        this.mIgnoreList = str;
    }

    @MainThread
    public void browse(Uri uri, int i) {
        Media media = new Media(this.mLibVlc, uri);
        browse(media, i);
        media.release();
    }

    @MainThread
    public void browse(Media media, int i) {
        media.retain();
        media.addOption(IGNORE_LIST_OPTION + this.mIgnoreList);
        if ((i & 2) != 0) {
            media.addOption(":no-sub-autodetect-file");
        }
        if ((i & 4) != 0) {
            media.addOption(":show-hiddenfiles");
        }
        int i2 = (i & 1) != 0 ? 9 : 1;
        reset();
        MediaList mediaListSubItems = media.subItems();
        this.mBrowserMediaList = mediaListSubItems;
        mediaListSubItems.setEventListener(this.mBrowserMediaListEventListener, this.mHandler);
        media.parseAsync(i2, 0);
        this.mMedia = media;
    }

    @MainThread
    public void discoverNetworkShares(String str) {
        reset();
        startMediaDiscoverer(str);
    }

    public MediaBrowser(LibVLC libVLC, EventListener eventListener, Handler handler) {
        this(libVLC, eventListener);
        this.mHandler = handler;
    }
}
