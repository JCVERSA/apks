package com.transsion.playercommon.utils;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.MediaItem;
import defpackage.qqb;
import java.io.IOException;

public abstract class VideoOrientationHelper {

    public interface a {
        void a();
    }

    public static boolean a(Context context) {
        return qqb.d(context);
    }

    public static boolean b(int i, int i2, int i3) {
        if (Math.abs(i) % 180 != 0) {
            return i3 >= i2;
        }
        return i2 >= i3;
    }

    public static boolean c(Context context, Uri uri) {
        if (uri == null) {
            return true;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                if (uri.toString().toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
                    return true;
                }
                mediaMetadataRetriever.setDataSource(context, uri);
                return b(e(mediaMetadataRetriever.extractMetadata(24)), e(mediaMetadataRetriever.extractMetadata(18)), e(mediaMetadataRetriever.extractMetadata(19)));
            } catch (Exception e) {
                Log.e("VideoOrientationHelper", "isVideoLandscape " + e);
                return true;
            } finally {
                mediaMetadataRetriever.close();
            }
            mediaMetadataRetriever.close();
        } catch (IOException e2) {
            Log.e("VideoOrientationHelper", "isVideoLandscape close " + e2.getMessage());
        }
    }

    public static void d(final Context context, final MediaItem mediaItem, final a aVar) {
        if (mediaItem == null || context == null) {
            LogUtils.m("VideoOrientationHelper", "mediaItem is null");
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        if (mediaItem.getOrientation() != -1) {
            if (aVar != null) {
                aVar.a();
            }
        } else {
            if (mediaItem.width == 0 || mediaItem.height == 0) {
                TaskExecutor.c(new TaskExecutor.Task<Boolean>() {
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override
                    public Boolean onBackground() {
                        return Boolean.valueOf(VideoOrientationHelper.c(context, mediaItem.getUri()));
                    }

                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override
                    public void onResult(Boolean bool) {
                        if (bool != null) {
                            mediaItem.setOrientation(bool.booleanValue() ? 1 : 0);
                        }
                        a aVar2 = aVar;
                        if (aVar2 != null) {
                            aVar2.a();
                        }
                    }
                });
                return;
            }
            mediaItem.setOrientation(b(mediaItem.getDegree(), mediaItem.width, mediaItem.height) ? 1 : 0);
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public static int e(String str) {
        if (str == null) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
