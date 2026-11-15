package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.annotation.Nullable;

@SuppressLint({"BanParcelableUsage"})
public final class MediaDescriptionCompat implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();
    public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
    public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
    public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
    public static final long STATUS_DOWNLOADED = 2;
    public static final long STATUS_DOWNLOADING = 1;
    public static final long STATUS_NOT_DOWNLOADED = 0;
    private static final String TAG = "MediaDescriptionCompat";
    private final CharSequence mDescription;
    private MediaDescription mDescriptionFwk;
    private final Bundle mExtras;
    private final Bitmap mIcon;
    private final Uri mIconUri;
    private final String mMediaId;
    private final Uri mMediaUri;
    private final CharSequence mSubtitle;
    private final CharSequence mTitle;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.fromMediaDescription(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override
        public MediaDescriptionCompat[] newArray(int i10) {
            return new MediaDescriptionCompat[i10];
        }
    }

    private static class b {
        static MediaDescription a(MediaDescription.Builder builder) {
            return builder.build();
        }

        static MediaDescription.Builder b() {
            return new MediaDescription.Builder();
        }

        @Nullable
        static CharSequence c(MediaDescription mediaDescription) {
            return mediaDescription.getDescription();
        }

        @Nullable
        static Bundle d(MediaDescription mediaDescription) {
            return mediaDescription.getExtras();
        }

        @Nullable
        static Bitmap e(MediaDescription mediaDescription) {
            return mediaDescription.getIconBitmap();
        }

        @Nullable
        static Uri f(MediaDescription mediaDescription) {
            return mediaDescription.getIconUri();
        }

        @Nullable
        static String g(MediaDescription mediaDescription) {
            return mediaDescription.getMediaId();
        }

        @Nullable
        static CharSequence h(MediaDescription mediaDescription) {
            return mediaDescription.getSubtitle();
        }

        @Nullable
        static CharSequence i(MediaDescription mediaDescription) {
            return mediaDescription.getTitle();
        }

        static void j(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setDescription(charSequence);
        }

        static void k(MediaDescription.Builder builder, @Nullable Bundle bundle) {
            builder.setExtras(bundle);
        }

        static void l(MediaDescription.Builder builder, @Nullable Bitmap bitmap) {
            builder.setIconBitmap(bitmap);
        }

        static void m(MediaDescription.Builder builder, @Nullable Uri uri) {
            builder.setIconUri(uri);
        }

        static void n(MediaDescription.Builder builder, @Nullable String str) {
            builder.setMediaId(str);
        }

        static void o(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setSubtitle(charSequence);
        }

        static void p(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setTitle(charSequence);
        }
    }

    private static class c {
        @Nullable
        static Uri a(MediaDescription mediaDescription) {
            return mediaDescription.getMediaUri();
        }

        static void b(MediaDescription.Builder builder, @Nullable Uri uri) {
            builder.setMediaUri(uri);
        }
    }

    public static final class d {

        private String f451a;

        private CharSequence f452b;

        private CharSequence f453c;

        private CharSequence f454d;

        private Bitmap f455e;

        private Uri f456f;

        private Bundle f457g;

        private Uri f458h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f451a, this.f452b, this.f453c, this.f454d, this.f455e, this.f456f, this.f457g, this.f458h);
        }

        public d b(CharSequence charSequence) {
            this.f454d = charSequence;
            return this;
        }

        public d c(Bundle bundle) {
            this.f457g = bundle;
            return this;
        }

        public d d(Bitmap bitmap) {
            this.f455e = bitmap;
            return this;
        }

        public d e(Uri uri) {
            this.f456f = uri;
            return this;
        }

        public d f(String str) {
            this.f451a = str;
            return this;
        }

        public d g(Uri uri) {
            this.f458h = uri;
            return this;
        }

        public d h(CharSequence charSequence) {
            this.f453c = charSequence;
            return this;
        }

        public d i(CharSequence charSequence) {
            this.f452b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.mMediaId = str;
        this.mTitle = charSequence;
        this.mSubtitle = charSequence2;
        this.mDescription = charSequence3;
        this.mIcon = bitmap;
        this.mIconUri = uri;
        this.mExtras = bundle;
        this.mMediaUri = uri2;
    }

    public static MediaDescriptionCompat fromMediaDescription(Object obj) {
        Bundle bundle = null;
        if (obj == null) {
            return null;
        }
        d dVar = new d();
        MediaDescription mediaDescription = (MediaDescription) obj;
        dVar.f(b.g(mediaDescription));
        dVar.i(b.i(mediaDescription));
        dVar.h(b.h(mediaDescription));
        dVar.b(b.c(mediaDescription));
        dVar.d(b.e(mediaDescription));
        dVar.e(b.f(mediaDescription));
        Bundle bundleD = b.d(mediaDescription);
        if (bundleD != null) {
            bundleD = MediaSessionCompat.j(bundleD);
        }
        Uri uri = bundleD != null ? (Uri) bundleD.getParcelable(DESCRIPTION_KEY_MEDIA_URI) : null;
        if (uri == null) {
            bundle = bundleD;
        } else if (!bundleD.containsKey(DESCRIPTION_KEY_NULL_BUNDLE_FLAG) || bundleD.size() != 2) {
            bundleD.remove(DESCRIPTION_KEY_MEDIA_URI);
            bundleD.remove(DESCRIPTION_KEY_NULL_BUNDLE_FLAG);
            bundle = bundleD;
        }
        dVar.c(bundle);
        if (uri != null) {
            dVar.g(uri);
        } else {
            dVar.g(c.a(mediaDescription));
        }
        MediaDescriptionCompat mediaDescriptionCompatA = dVar.a();
        mediaDescriptionCompatA.mDescriptionFwk = mediaDescription;
        return mediaDescriptionCompatA;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.mDescription;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Nullable
    public Bitmap getIconBitmap() {
        return this.mIcon;
    }

    @Nullable
    public Uri getIconUri() {
        return this.mIconUri;
    }

    public Object getMediaDescription() {
        MediaDescription mediaDescription = this.mDescriptionFwk;
        if (mediaDescription != null) {
            return mediaDescription;
        }
        MediaDescription.Builder builderB = b.b();
        b.n(builderB, this.mMediaId);
        b.p(builderB, this.mTitle);
        b.o(builderB, this.mSubtitle);
        b.j(builderB, this.mDescription);
        b.l(builderB, this.mIcon);
        b.m(builderB, this.mIconUri);
        b.k(builderB, this.mExtras);
        c.b(builderB, this.mMediaUri);
        MediaDescription mediaDescriptionA = b.a(builderB);
        this.mDescriptionFwk = mediaDescriptionA;
        return mediaDescriptionA;
    }

    @Nullable
    public String getMediaId() {
        return this.mMediaId;
    }

    @Nullable
    public Uri getMediaUri() {
        return this.mMediaUri;
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.mTitle;
    }

    public String toString() {
        return ((Object) this.mTitle) + ", " + ((Object) this.mSubtitle) + ", " + ((Object) this.mDescription);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        ((MediaDescription) getMediaDescription()).writeToParcel(parcel, i10);
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.mMediaId = parcel.readString();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mTitle = (CharSequence) creator.createFromParcel(parcel);
        this.mSubtitle = (CharSequence) creator.createFromParcel(parcel);
        this.mDescription = (CharSequence) creator.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.mIcon = (Bitmap) parcel.readParcelable(classLoader);
        this.mIconUri = (Uri) parcel.readParcelable(classLoader);
        this.mExtras = parcel.readBundle(classLoader);
        this.mMediaUri = (Uri) parcel.readParcelable(classLoader);
    }
}
