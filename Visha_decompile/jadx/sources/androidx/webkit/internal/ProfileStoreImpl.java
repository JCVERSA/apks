package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.Profile;
import androidx.webkit.ProfileStore;
import defpackage.kk0;
import java.lang.reflect.InvocationHandler;
import java.util.List;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.ProfileStoreBoundaryInterface;

public class ProfileStoreImpl implements ProfileStore {
    private static ProfileStore sInstance;
    private final ProfileStoreBoundaryInterface mProfileStoreImpl;

    private ProfileStoreImpl(ProfileStoreBoundaryInterface profileStoreBoundaryInterface) {
        this.mProfileStoreImpl = profileStoreBoundaryInterface;
    }

    @NonNull
    public static ProfileStore getInstance() {
        if (sInstance == null) {
            sInstance = new ProfileStoreImpl(WebViewGlueCommunicator.getFactory().getProfileStore());
        }
        return sInstance;
    }

    @Override
    public boolean deleteProfile(@NonNull String str) throws IllegalStateException {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return this.mProfileStoreImpl.deleteProfile(str);
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override
    @NonNull
    public List<String> getAllProfileNames() {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return this.mProfileStoreImpl.getAllProfileNames();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override
    @NonNull
    public Profile getOrCreateProfile(@NonNull String str) {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return new ProfileImpl((ProfileBoundaryInterface) kk0.a(ProfileBoundaryInterface.class, this.mProfileStoreImpl.getOrCreateProfile(str)));
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override
    @Nullable
    public Profile getProfile(@NonNull String str) {
        if (!WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        InvocationHandler profile = this.mProfileStoreImpl.getProfile(str);
        if (profile != null) {
            return new ProfileImpl((ProfileBoundaryInterface) kk0.a(ProfileBoundaryInterface.class, profile));
        }
        return null;
    }

    private ProfileStoreImpl() {
        this.mProfileStoreImpl = null;
    }
}
