package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;
import android.net.Uri;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.utils.Utils;

class FsModuleResolverImpl implements FsModuleResolver {
    public final Context a;
    public final SafFsModule b;
    public final DefaultFsModule c;

    public FsModuleResolverImpl(Context context) {
        this.a = context;
        this.b = new SafFsModule(context);
        this.c = new DefaultFsModule(context);
    }

    @Override
    public FsModule a(Uri uri) throws UnknownUriException {
        if (Utils.g(this.a, uri)) {
            return this.b;
        }
        if (Utils.f(uri)) {
            return this.c;
        }
        throw new UnknownUriException("Cannot resolve file system for the given uri: " + uri);
    }
}
