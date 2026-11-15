package defpackage;

import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.request.base.Request;

public abstract class so4 {
    public static void a(Request request, CacheEntity cacheEntity, CacheMode cacheMode) {
        HttpHeaders responseHeaders;
        if (cacheEntity == null || cacheMode != CacheMode.DEFAULT || (responseHeaders = cacheEntity.getResponseHeaders()) == null) {
            return;
        }
        String str = responseHeaders.get(HttpHeaders.HEAD_KEY_E_TAG);
        if (str != null) {
            request.headers(HttpHeaders.HEAD_KEY_IF_NONE_MATCH, str);
        }
        long lastModified = HttpHeaders.getLastModified(responseHeaders.get(HttpHeaders.HEAD_KEY_LAST_MODIFIED));
        if (lastModified > 0) {
            request.headers(HttpHeaders.HEAD_KEY_IF_MODIFIED_SINCE, HttpHeaders.formatMillisToGMT(lastModified));
        }
    }
}
