package com.transsion.liblan.util;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.MainThread;
import com.transsion.liblan.FactoryManager;
import com.transsion.liblan.TranMediaDiscoverer;
import com.transsion.liblan.TranMediaList;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaFactory;
import com.transsion.liblan.interfaces.ITranMediaList;
import java.util.ArrayList;
import java.util.Iterator;

public class MediaBrowser {
    private static final String IGNORE_LIST_OPTION = ":ignore-filetypes=";
    private static final String TAG = "MediaBrowser";
    private ITranMediaList mBrowserMediaList;
    private final ITranMediaList.TranEventListener mBrowserMediaListTranEventListener;
    private final ArrayList<ITranMedia> mDiscovererMediaArray;
    private final ITranMediaList.TranEventListener mDiscovererMediaListTranEventListener;
    private Handler mHandler;
    private final ITranLibLAN mITranLibLAN;
    private String mIgnoreList;
    private boolean mIsAlive;
    private MediaEventListener mMediaEventListener;
    private ITranMediaFactory mMediaFactory;
    private ITranMedia mTranMedia;
    private final ArrayList<TranMediaDiscoverer> mTranMediaDiscoverers;

    public static class BROWSER_Flag {
        public static final int INTERACT = 1;
        public static final int NO_SLAVES_AUTODETECT = 2;
        public static final int SHOW_HIDDEN_FILES = 4;
    }

    public interface MediaEventListener {
        void onBrowseEnd();

        void onMediaAdded(int i, ITranMedia iTranMedia);

        void onMediaRemoved(int i, ITranMedia iTranMedia);
    }

    public MediaBrowser(ITranLibLAN iTranLibLAN, MediaEventListener mediaEventListener) {
        this.mTranMediaDiscoverers = new ArrayList<>();
        this.mDiscovererMediaArray = new ArrayList<>();
        this.mIgnoreList = "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml";
        this.mBrowserMediaListTranEventListener = new ITranMediaList.TranEventListener() {
            @Override
            public void onEvent(ITranMediaList.TranEvent tranEvent) {
                if (MediaBrowser.this.mMediaEventListener == null) {
                    return;
                }
                int i = tranEvent.type;
                if (i == 512) {
                    MediaBrowser.this.mMediaEventListener.onMediaAdded(tranEvent.index, tranEvent.media);
                } else if (i == 514) {
                    MediaBrowser.this.mMediaEventListener.onMediaRemoved(tranEvent.index, tranEvent.media);
                } else {
                    if (i != 516) {
                        return;
                    }
                    MediaBrowser.this.mMediaEventListener.onBrowseEnd();
                }
            }
        };
        this.mDiscovererMediaListTranEventListener = new ITranMediaList.TranEventListener() {
            @Override
            public void onEvent(ITranMediaList.TranEvent tranEvent) {
                if (MediaBrowser.this.mMediaEventListener == null) {
                    return;
                }
                int i = tranEvent.type;
                if (i == 512) {
                    MediaBrowser.this.mDiscovererMediaArray.add(tranEvent.media);
                    MediaBrowser.this.mMediaEventListener.onMediaAdded(-1, tranEvent.media);
                    return;
                }
                if (i != 514) {
                    if (i != 516) {
                        return;
                    }
                    MediaBrowser.this.mMediaEventListener.onBrowseEnd();
                } else {
                    int iIndexOf = MediaBrowser.this.mDiscovererMediaArray.indexOf(tranEvent.media);
                    if (iIndexOf != -1) {
                        MediaBrowser.this.mDiscovererMediaArray.remove(iIndexOf);
                    }
                    if (iIndexOf != -1) {
                        MediaBrowser.this.mMediaEventListener.onMediaRemoved(iIndexOf, tranEvent.media);
                    }
                }
            }
        };
        this.mMediaFactory = (ITranMediaFactory) FactoryManager.getFactory(ITranMediaFactory.FACTORY_ID);
        this.mITranLibLAN = iTranLibLAN;
        iTranLibLAN.retain();
        this.mMediaEventListener = mediaEventListener;
        this.mIsAlive = true;
    }

    private void reset() {
        Iterator<TranMediaDiscoverer> it = this.mTranMediaDiscoverers.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mTranMediaDiscoverers.clear();
        this.mDiscovererMediaArray.clear();
        ITranMedia iTranMedia = this.mTranMedia;
        if (iTranMedia != null) {
            iTranMedia.release();
            this.mTranMedia = null;
        }
        ITranMediaList iTranMediaList = this.mBrowserMediaList;
        if (iTranMediaList != null) {
            iTranMediaList.release();
            this.mBrowserMediaList = null;
        }
    }

    private void startMediaDiscoverer(String str) {
        TranMediaDiscoverer tranMediaDiscoverer = new TranMediaDiscoverer(this.mITranLibLAN, str);
        this.mTranMediaDiscoverers.add(tranMediaDiscoverer);
        TranMediaList mediaList = tranMediaDiscoverer.getMediaList();
        mediaList.setTranEventListener(this.mDiscovererMediaListTranEventListener, this.mHandler);
        mediaList.release();
        if (tranMediaDiscoverer.isReleased()) {
            return;
        }
        tranMediaDiscoverer.start();
    }

    @MainThread
    public void browse(String str, int i) {
        ITranMedia mediaFromLocal = this.mMediaFactory.getMediaFromLocal(this.mITranLibLAN, str);
        browse(mediaFromLocal, i);
        mediaFromLocal.release();
    }

    @MainThread
    public void changeEventListener(MediaEventListener mediaEventListener) {
        reset();
        this.mMediaEventListener = mediaEventListener;
    }

    @MainThread
    public void discoverNetworkShares() {
        reset();
        TranMediaDiscoverer.Description[] list = TranMediaDiscoverer.list(this.mITranLibLAN, 1);
        if (list == null) {
            return;
        }
        for (TranMediaDiscoverer.Description description : list) {
            Log.i(TAG, "starting " + description.name + " discover (" + description.longName + ")");
            startMediaDiscoverer(description.name);
        }
    }

    @MainThread
    public ITranMedia getMediaAt(int i) {
        if (i < 0 || i >= getMediaCount()) {
            throw new IndexOutOfBoundsException();
        }
        ITranMediaList iTranMediaList = this.mBrowserMediaList;
        ITranMedia mediaOfIndex = iTranMediaList != null ? iTranMediaList.getMediaOfIndex(i) : this.mDiscovererMediaArray.get(i);
        mediaOfIndex.retain();
        return mediaOfIndex;
    }

    @MainThread
    public int getMediaCount() {
        ITranMediaList iTranMediaList = this.mBrowserMediaList;
        return iTranMediaList != null ? iTranMediaList.getCount() : this.mDiscovererMediaArray.size();
    }

    @MainThread
    public void release() {
        reset();
        if (!this.mIsAlive) {
            throw new IllegalStateException("MediaBrowser released more than one time");
        }
        this.mITranLibLAN.release();
        this.mIsAlive = false;
    }

    @MainThread
    public void setIgnoreFileTypes(String str) {
        this.mIgnoreList = str;
    }

    @MainThread
    public void browse(Uri uri, int i) {
        ITranMedia mediaFromUri = this.mMediaFactory.getMediaFromUri(this.mITranLibLAN, uri);
        browse(mediaFromUri, i);
        mediaFromUri.release();
    }

    @MainThread
    public void browse(ITranMedia iTranMedia, int i) {
        iTranMedia.retain();
        iTranMedia.addOption(IGNORE_LIST_OPTION + this.mIgnoreList);
        if ((i & 2) != 0) {
            iTranMedia.addOption(":no-sub-autodetect-file");
        }
        if ((i & 4) != 0) {
            iTranMedia.addOption(":show-hiddenfiles");
        }
        int i2 = (i & 1) != 0 ? 9 : 1;
        reset();
        ITranMediaList iTranMediaListSubItems = iTranMedia.subItems();
        this.mBrowserMediaList = iTranMediaListSubItems;
        iTranMediaListSubItems.setTranEventListener(this.mBrowserMediaListTranEventListener, this.mHandler);
        iTranMedia.parseAsync(i2, 0);
        this.mTranMedia = iTranMedia;
    }

    @MainThread
    public void discoverNetworkShares(String str) {
        reset();
        startMediaDiscoverer(str);
    }

    public MediaBrowser(ITranLibLAN iTranLibLAN, MediaEventListener mediaEventListener, Handler handler) {
        this(iTranLibLAN, mediaEventListener);
        this.mHandler = handler;
    }
}
