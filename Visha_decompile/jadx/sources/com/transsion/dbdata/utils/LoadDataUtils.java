package com.transsion.dbdata.utils;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.dbhelpder.VideoCloudCacheHelper;
import defpackage.av3;
import defpackage.pp3;
import defpackage.s21;
import defpackage.tpb;
import defpackage.ykc;
import defpackage.yx2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.commons.lang3.BooleanUtils;

public class LoadDataUtils {
    public static final int[] c = {-1, 0};
    public Context a;
    public a b;

    public interface a {
        void a(ArrayList arrayList, boolean z);

        void b(ArrayList arrayList, PlayVideoData playVideoData);

        void c(Uri uri, boolean z);
    }

    public LoadDataUtils(Context context) {
        this.a = context;
    }

    public static boolean m(int i) {
        int[] iArr = c;
        return (i == iArr[0] || i == iArr[1]) ? false : true;
    }

    public void j(final PlayVideoData playVideoData) {
        a aVar;
        final int i = playVideoData.mediaId;
        if (playVideoData.playUri == null && !MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoData)) {
            playVideoData.playUri = MediaItem.getUri(i, playVideoData.fromInternal);
        }
        Log.d("LoadDataUtils", "asyncLoad uri:" + playVideoData.playUri + StringUtils.COMMA + this.b);
        final boolean z = true;
        if (playVideoData.playUri != null && m(i) && (aVar = this.b) != null) {
            aVar.c(playVideoData.playUri, true);
            z = false;
        }
        TaskExecutor.c(new TaskExecutor.Task<Object>() {
            @Override
            public Object onBackground() {
                if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoData)) {
                    return null;
                }
                if (playVideoData.isKt()) {
                    return VideoCloudCacheHelper.c(playVideoData.mKtFileId);
                }
                if (playVideoData.isFromNet) {
                    return tpb.j0().z(playVideoData.mYoutubeId);
                }
                return (LoadDataUtils.m(i) || playVideoData.playUri == null) ? tpb.j0().h(playVideoData.mediaId) : tpb.j0().n(playVideoData.playUri);
            }

            @Override
            public void onResult(Object obj) {
                ArrayList arrayList = new ArrayList();
                if (obj instanceof MediaItem) {
                    MediaItem mediaItem = (MediaItem) obj;
                    Log.d("LoadDataUtils", "asyncLoad playlist:" + mediaItem);
                    PlayVideoData playVideoData2 = playVideoData;
                    mediaItem.isVirtualFolder = playVideoData2.isVirtualFolder;
                    mediaItem.virtualFolderMatchName = playVideoData2.virtualFolderMatchName;
                    arrayList.add(mediaItem);
                }
                Log.d("LoadDataUtils", "asyncLoad playlist:" + arrayList.size());
                if (LoadDataUtils.this.b != null) {
                    LoadDataUtils.this.b.a(arrayList, z);
                }
                LoadDataUtils.this.k(playVideoData);
            }
        });
    }

    public void k(final PlayVideoData playVideoData) {
        if (playVideoData != null && playVideoData.isSecureCamera) {
            l(playVideoData);
        } else {
            if (playVideoData == null || !playVideoData.isBucketValidate()) {
                return;
            }
            TaskExecutor.c(new TaskExecutor.Task<ArrayList<MediaItem>>() {
                @Override
                public ArrayList<MediaItem> onBackground() {
                    ArrayList arrayList = new ArrayList();
                    PlayVideoData playVideoData2 = playVideoData;
                    int i = playVideoData2.listFlag;
                    if (i == 1) {
                        arrayList = LoadDataUtils.this.p(playVideoData2);
                    } else if (i != 2) {
                        if (i == 13) {
                            arrayList = LoadDataUtils.this.r(playVideoData2);
                        } else if (i == 14) {
                            arrayList = LoadDataUtils.this.s(playVideoData2);
                        } else if (i == 16) {
                            arrayList = ykc.a().b();
                        } else if (i == 30 || i == 33) {
                            arrayList = LoadDataUtils.this.q(playVideoData2);
                        } else if (i == 99) {
                            arrayList.addAll(tpb.j0().f0(yx2.l));
                        } else if (i == 1001) {
                            arrayList = s21.b.a().l();
                        } else if (i == 49) {
                            MediaItem mediaItemH = LoadDataUtils.m(playVideoData2.mediaId) ? tpb.j0().h(playVideoData.mediaId) : null;
                            if (mediaItemH == null && playVideoData.playUri != null) {
                                mediaItemH = tpb.j0().n(playVideoData.playUri);
                            }
                            if (mediaItemH == null) {
                                mediaItemH = playVideoData.toMediaItem();
                            } else {
                                PlayVideoData playVideoData3 = playVideoData;
                                long j = playVideoData3.bucketId;
                                if (j == 0 || j == -1) {
                                    playVideoData3.bucketId = mediaItemH.bucketId;
                                }
                            }
                            arrayList = new ArrayList(Collections.singletonList(mediaItemH));
                        } else if (i != 50) {
                            switch (i) {
                                case 1003:
                                    arrayList = s21.b.a().j();
                                    break;
                                case 1004:
                                    if (playVideoData2.getMiMediaInfo() != null) {
                                        arrayList = s21.b.a().i(playVideoData.getMiMediaInfo().getMediaLibraryId());
                                    }
                                    break;
                                case 1005:
                                    arrayList = s21.b.a().k();
                                    break;
                                case 1006:
                                    arrayList = VideoCloudCacheHelper.a();
                                    break;
                                default:
                                    arrayList = LoadDataUtils.this.t(playVideoData2);
                                    break;
                            }
                        } else if (playVideoData2.isFromNet || playVideoData2.isKt()) {
                            arrayList = VideoCloudCacheHelper.d(playVideoData.mKtFileId);
                        }
                    } else if (playVideoData2.isShuffle) {
                        arrayList = LoadDataUtils.this.o(playVideoData2);
                    } else {
                        arrayList = pp3.e(LoadDataUtils.this.a) ? LoadDataUtils.this.n(playVideoData) : LoadDataUtils.this.o(playVideoData);
                    }
                    if (playVideoData.isShuffle) {
                        Collections.shuffle(arrayList);
                    }
                    LogUtils.j("LoadDataUtils", "asyncLoadBuckets, listFlag:" + playVideoData.listFlag, "videoData:" + playVideoData, "result:" + arrayList.size());
                    return arrayList;
                }

                @Override
                public void onResult(ArrayList<MediaItem> arrayList) {
                    if (LoadDataUtils.this.b != null) {
                        LoadDataUtils.this.b.b(arrayList, playVideoData);
                    }
                }
            });
        }
    }

    public void l(final PlayVideoData playVideoData) {
        if (playVideoData == null || playVideoData.secureAlbum == null) {
            return;
        }
        TaskExecutor.c(new TaskExecutor.Task<ArrayList<MediaItem>>() {
            @Override
            public ArrayList<MediaItem> onBackground() {
                ArrayList arrayList = playVideoData.secureAlbum;
                ArrayList<MediaItem> arrayList2 = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    String str = (String) arrayList.get(i);
                    int iLastIndexOf = str.lastIndexOf(43);
                    if (iLastIndexOf <= 0 || iLastIndexOf >= str.length()) {
                        Log.e("LoadDataUtils", "<securityAlbumRun> [ERROR] form not right, strItem=" + str);
                    } else {
                        String strSubstring = str.substring(0, iLastIndexOf);
                        String strSubstring2 = str.substring(iLastIndexOf + 1);
                        int i2 = Integer.parseInt(strSubstring);
                        if (strSubstring2.compareToIgnoreCase(BooleanUtils.TRUE) == 0) {
                            MediaItem mediaItemZ = playVideoData.isFromNet ? tpb.j0().z(playVideoData.mYoutubeId) : tpb.j0().h(i2);
                            if (mediaItemZ != null) {
                                arrayList2.add(mediaItemZ);
                            }
                        }
                    }
                }
                Log.d("LoadDataUtils", "asyncLoadVideoForSecureCamera " + arrayList2.size());
                return arrayList2;
            }

            @Override
            public void onResult(ArrayList<MediaItem> arrayList) {
                if (LoadDataUtils.this.b != null) {
                    LoadDataUtils.this.b.b(arrayList, playVideoData);
                }
            }
        });
    }

    public final ArrayList n(PlayVideoData playVideoData) {
        return new ArrayList(tpb.j0().r(Integer.MAX_VALUE));
    }

    public final ArrayList o(PlayVideoData playVideoData) {
        return new ArrayList(tpb.j0().U(Integer.MAX_VALUE));
    }

    public final ArrayList p(PlayVideoData playVideoData) {
        if (!playVideoData.isFromNet && !playVideoData.isKt()) {
            return new ArrayList(tpb.j0().O(false, Integer.MAX_VALUE, true));
        }
        String str = playVideoData.mYoutubeId;
        if (str == null) {
            str = "";
        }
        return new ArrayList(tpb.j0().d(str));
    }

    public final ArrayList q(PlayVideoData playVideoData) {
        ArrayList arrayList = new ArrayList();
        if (playVideoData.isFromNet || playVideoData.isKt()) {
            arrayList.addAll(tpb.j0().b0(playVideoData));
        } else if (playVideoData.bucketId == 0) {
            arrayList.addAll(tpb.j0().S());
        } else {
            arrayList.addAll(tpb.j0().E(playVideoData.bucketId));
        }
        return arrayList;
    }

    public final ArrayList r(PlayVideoData playVideoData) {
        return new ArrayList(tpb.j0().W());
    }

    public final ArrayList s(PlayVideoData playVideoData) {
        return new ArrayList(tpb.j0().e0(Integer.MAX_VALUE));
    }

    public final ArrayList t(PlayVideoData playVideoData) {
        if (playVideoData.isFromNet) {
            ArrayList arrayList = new ArrayList();
            MediaItem mediaItemZ = tpb.j0().z(playVideoData.mYoutubeId);
            if (mediaItemZ != null) {
                arrayList.add(mediaItemZ);
            }
            return arrayList;
        }
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.bucketId = playVideoData.bucketId;
        mediaBucket.isVirtualFolder = playVideoData.isVirtualFolder;
        mediaBucket.virtualFolderMatchName = playVideoData.virtualFolderMatchName;
        String str = playVideoData.path;
        mediaBucket.parentPath = str != null ? av3.u(str) : null;
        return new ArrayList(tpb.j0().i(mediaBucket));
    }

    public void u(a aVar) {
        this.b = aVar;
    }
}
