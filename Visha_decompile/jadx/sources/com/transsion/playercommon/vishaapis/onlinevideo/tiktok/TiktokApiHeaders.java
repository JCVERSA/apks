package com.transsion.playercommon.vishaapis.onlinevideo.tiktok;

import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiConfig;
import defpackage.j1a;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokApiHeaders;", "", MethodDecl.initName, "()V", "HEADER_ANDROID_ID", "", "isTtApiPath", "", "path", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokApiHeaders {
    public static final String HEADER_ANDROID_ID = "androidId";
    public static final TiktokApiHeaders INSTANCE = new TiktokApiHeaders();

    private TiktokApiHeaders() {
    }

    public static final boolean isTtApiPath(String path) {
        return (path == null || path.length() == 0 || !j1a.X(path, OnlineVideoApiConfig.API.API_TT_PATH_PREFIX, false, 2, null)) ? false : true;
    }
}
