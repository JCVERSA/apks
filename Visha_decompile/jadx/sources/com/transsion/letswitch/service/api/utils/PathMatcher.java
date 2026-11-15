package com.transsion.letswitch.service.api.utils;

import com.transsion.letswitch.service.api.Constants;
import defpackage.g1a;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/letswitch/service/api/utils/PathMatcher;", "", MethodDecl.initName, "()V", "toAppPath", "", "path", "toServicePath", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PathMatcher {
    public static final PathMatcher INSTANCE = new PathMatcher();

    private PathMatcher() {
    }

    public static final String toAppPath(String path) {
        y45.j(path, "path");
        return g1a.N(path, Constants.PACKAGE_NAME_SERVICE, Constants.PACKAGE_NAME_APP, false, 4, null);
    }

    public static final String toServicePath(String path) {
        y45.j(path, "path");
        return g1a.N(path, Constants.PACKAGE_NAME_APP, Constants.PACKAGE_NAME_SERVICE, false, 4, null);
    }
}
