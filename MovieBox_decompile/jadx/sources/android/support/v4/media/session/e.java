package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaSession;
import android.os.Bundle;

public abstract class e {
    public static MediaSession a(Context context, String str, Bundle bundle) {
        return new MediaSession(context, str, bundle);
    }
}
