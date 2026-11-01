package androidx.emoji2.text;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import app.fast.ssh.ProtectedFastSSH;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class EmojiCompat {
    static final int EMOJI_COUNT_UNLIMITED = Integer.MAX_VALUE;
    public static final int EMOJI_FALLBACK = 2;
    public static final int EMOJI_SUPPORTED = 1;
    public static final int EMOJI_UNSUPPORTED = 0;
    public static final int LOAD_STATE_DEFAULT = 3;
    public static final int LOAD_STATE_FAILED = 2;
    public static final int LOAD_STATE_LOADING = 0;
    public static final int LOAD_STATE_SUCCEEDED = 1;
    public static final int LOAD_STRATEGY_DEFAULT = 0;
    public static final int LOAD_STRATEGY_MANUAL = 1;
    public static final int REPLACE_STRATEGY_ALL = 1;
    public static final int REPLACE_STRATEGY_DEFAULT = 0;
    public static final int REPLACE_STRATEGY_NON_EXISTENT = 2;
    private static volatile boolean sHasDoneDefaultConfigLookup;
    private static volatile EmojiCompat sInstance;
    final int[] mEmojiAsDefaultStyleExceptions;
    private final int mEmojiSpanIndicatorColor;
    private final boolean mEmojiSpanIndicatorEnabled;
    private final GlyphChecker mGlyphChecker;
    private final CompatInternal mHelper;
    private final Set<InitCallback> mInitCallbacks;
    private final ReadWriteLock mInitLock = new ReentrantReadWriteLock();
    private volatile int mLoadState = 3;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final int mMetadataLoadStrategy;
    final MetadataRepoLoader mMetadataLoader;
    final boolean mReplaceAll;
    private final SpanFactory mSpanFactory;
    final boolean mUseEmojiAsDefaultStyle;
    private static final String NOT_INITIALIZED_ERROR_TEXT = ProtectedFastSSH.s("ᣟ");
    public static final String EDITOR_INFO_METAVERSION_KEY = ProtectedFastSSH.s("ᣠ");
    public static final String EDITOR_INFO_REPLACE_ALL_KEY = ProtectedFastSSH.s("ᣡ");
    private static final Object INSTANCE_LOCK = new Object();
    private static final Object CONFIG_LOCK = new Object();

    @Retention(RetentionPolicy.SOURCE)
    public @interface CodepointSequenceMatchResult {
    }

    private static class CompatInternal {
        final EmojiCompat mEmojiCompat;

        CompatInternal(EmojiCompat emojiCompat) {
            this.mEmojiCompat = emojiCompat;
        }

        String getAssetSignature() {
            return "";
        }

        int getEmojiEnd(CharSequence charSequence, int i) {
            return -1;
        }

        public int getEmojiMatch(CharSequence charSequence, int i) {
            return 0;
        }

        int getEmojiStart(CharSequence charSequence, int i) {
            return -1;
        }

        boolean hasEmojiGlyph(CharSequence charSequence) {
            return false;
        }

        boolean hasEmojiGlyph(CharSequence charSequence, int i) {
            return false;
        }

        void loadMetadata() {
            this.mEmojiCompat.onMetadataLoadSuccess();
        }

        CharSequence process(CharSequence charSequence, int i, int i2, int i3, boolean z) {
            return charSequence;
        }

        void updateEditorInfoAttrs(EditorInfo editorInfo) {
        }
    }

    private static final class CompatInternal19 extends CompatInternal {
        private volatile MetadataRepo mMetadataRepo;
        private volatile EmojiProcessor mProcessor;

        class AnonymousClass1 extends MetadataRepoLoaderCallback {
            AnonymousClass1() {
            }

            @Override
            public void onFailed(Throwable th) {
                CompatInternal19.this.mEmojiCompat.onMetadataLoadFailed(th);
            }

            @Override
            public void onLoaded(MetadataRepo metadataRepo) {
                CompatInternal19.this.onMetadataLoadSuccess(metadataRepo);
            }
        }

        CompatInternal19(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }

        @Override
        String getAssetSignature() {
            String strSourceSha = this.mMetadataRepo.getMetadataList().sourceSha();
            return strSourceSha == null ? "" : strSourceSha;
        }

        @Override
        int getEmojiEnd(CharSequence charSequence, int i) {
            return this.mProcessor.getEmojiEnd(charSequence, i);
        }

        @Override
        public int getEmojiMatch(CharSequence charSequence, int i) {
            return this.mProcessor.getEmojiMatch(charSequence, i);
        }

        @Override
        int getEmojiStart(CharSequence charSequence, int i) {
            return this.mProcessor.getEmojiStart(charSequence, i);
        }

        @Override
        boolean hasEmojiGlyph(CharSequence charSequence) {
            return this.mProcessor.getEmojiMatch(charSequence) == 1;
        }

        @Override
        boolean hasEmojiGlyph(CharSequence charSequence, int i) {
            return this.mProcessor.getEmojiMatch(charSequence, i) == 1;
        }

        @Override
        void loadMetadata() {
            try {
                this.mEmojiCompat.mMetadataLoader.load(new AnonymousClass1());
            } catch (Throwable th) {
                this.mEmojiCompat.onMetadataLoadFailed(th);
            }
        }

        void onMetadataLoadSuccess(MetadataRepo metadataRepo) {
            if (metadataRepo == null) {
                this.mEmojiCompat.onMetadataLoadFailed(new IllegalArgumentException(ProtectedFastSSH.s("ᣗ")));
                return;
            }
            this.mMetadataRepo = metadataRepo;
            this.mProcessor = new EmojiProcessor(this.mMetadataRepo, EmojiCompat.access$000(this.mEmojiCompat), EmojiCompat.access$100(this.mEmojiCompat), this.mEmojiCompat.mUseEmojiAsDefaultStyle, this.mEmojiCompat.mEmojiAsDefaultStyleExceptions, EmojiExclusions.getEmojiExclusions());
            this.mEmojiCompat.onMetadataLoadSuccess();
        }

        @Override
        CharSequence process(CharSequence charSequence, int i, int i2, int i3, boolean z) {
            return this.mProcessor.process(charSequence, i, i2, i3, z);
        }

        @Override
        void updateEditorInfoAttrs(EditorInfo editorInfo) {
            editorInfo.extras.putInt(ProtectedFastSSH.s("ᣘ"), this.mMetadataRepo.getMetadataVersion());
            editorInfo.extras.putBoolean(ProtectedFastSSH.s("ᣙ"), this.mEmojiCompat.mReplaceAll);
        }
    }

    public static abstract class Config {
        int[] mEmojiAsDefaultStyleExceptions;
        boolean mEmojiSpanIndicatorEnabled;
        Set<InitCallback> mInitCallbacks;
        final MetadataRepoLoader mMetadataLoader;
        boolean mReplaceAll;
        SpanFactory mSpanFactory;
        boolean mUseEmojiAsDefaultStyle;
        int mEmojiSpanIndicatorColor = -16711936;
        int mMetadataLoadStrategy = 0;
        GlyphChecker mGlyphChecker = new DefaultGlyphChecker();

        protected Config(MetadataRepoLoader metadataRepoLoader) {
            Preconditions.checkNotNull(metadataRepoLoader, ProtectedFastSSH.s("ᣚ"));
            this.mMetadataLoader = metadataRepoLoader;
        }

        protected final MetadataRepoLoader getMetadataRepoLoader() {
            return this.mMetadataLoader;
        }

        public Config registerInitCallback(InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, ProtectedFastSSH.s("ᣛ"));
            if (this.mInitCallbacks == null) {
                this.mInitCallbacks = new ArraySet();
            }
            this.mInitCallbacks.add(initCallback);
            return this;
        }

        public Config setEmojiSpanIndicatorColor(int i) {
            this.mEmojiSpanIndicatorColor = i;
            return this;
        }

        public Config setEmojiSpanIndicatorEnabled(boolean z) {
            this.mEmojiSpanIndicatorEnabled = z;
            return this;
        }

        public Config setGlyphChecker(GlyphChecker glyphChecker) {
            Preconditions.checkNotNull(glyphChecker, ProtectedFastSSH.s("ᣜ"));
            this.mGlyphChecker = glyphChecker;
            return this;
        }

        public Config setMetadataLoadStrategy(int i) {
            this.mMetadataLoadStrategy = i;
            return this;
        }

        public Config setReplaceAll(boolean z) {
            this.mReplaceAll = z;
            return this;
        }

        public Config setSpanFactory(SpanFactory spanFactory) {
            this.mSpanFactory = spanFactory;
            return this;
        }

        public Config setUseEmojiAsDefaultStyle(boolean z) {
            return setUseEmojiAsDefaultStyle(z, null);
        }

        public Config setUseEmojiAsDefaultStyle(boolean z, List<Integer> list) {
            this.mUseEmojiAsDefaultStyle = z;
            if (!z || list == null) {
                this.mEmojiAsDefaultStyleExceptions = null;
                return this;
            }
            this.mEmojiAsDefaultStyleExceptions = new int[list.size()];
            Iterator<Integer> it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                this.mEmojiAsDefaultStyleExceptions[i] = it.next().intValue();
                i++;
            }
            Arrays.sort(this.mEmojiAsDefaultStyleExceptions);
            return this;
        }

        public Config unregisterInitCallback(InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, ProtectedFastSSH.s("ᣛ"));
            Set<InitCallback> set = this.mInitCallbacks;
            if (set != null) {
                set.remove(initCallback);
            }
            return this;
        }
    }

    public static class DefaultSpanFactory implements SpanFactory {
        @Override
        public EmojiSpan createSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            return new TypefaceEmojiSpan(typefaceEmojiRasterizer);
        }
    }

    public interface GlyphChecker {
        boolean hasGlyph(CharSequence charSequence, int i, int i2, int i3);
    }

    public static abstract class InitCallback {
        public void onFailed(Throwable th) {
        }

        public void onInitialized() {
        }
    }

    private static class ListenerDispatcher implements Runnable {
        private final List<InitCallback> mInitCallbacks;
        private final int mLoadState;
        private final Throwable mThrowable;

        ListenerDispatcher(InitCallback initCallback, int i) {
            this(Arrays.asList((InitCallback) Preconditions.checkNotNull(initCallback, ProtectedFastSSH.s("ᣝ"))), i, null);
        }

        ListenerDispatcher(Collection<InitCallback> collection, int i) {
            this(collection, i, null);
        }

        ListenerDispatcher(Collection<InitCallback> collection, int i, Throwable th) {
            Preconditions.checkNotNull(collection, ProtectedFastSSH.s("ᣞ"));
            this.mInitCallbacks = new ArrayList(collection);
            this.mLoadState = i;
            this.mThrowable = th;
        }

        @Override
        public void run() {
            int size = this.mInitCallbacks.size();
            int i = 0;
            if (this.mLoadState != 1) {
                while (i < size) {
                    this.mInitCallbacks.get(i).onFailed(this.mThrowable);
                    i++;
                }
            } else {
                while (i < size) {
                    this.mInitCallbacks.get(i).onInitialized();
                    i++;
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LoadStrategy {
    }

    public interface MetadataRepoLoader {
        void load(MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    public static abstract class MetadataRepoLoaderCallback {
        public abstract void onFailed(Throwable th);

        public abstract void onLoaded(MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReplaceStrategy {
    }

    public interface SpanFactory {
        EmojiSpan createSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    private EmojiCompat(Config config) {
        this.mReplaceAll = config.mReplaceAll;
        this.mUseEmojiAsDefaultStyle = config.mUseEmojiAsDefaultStyle;
        this.mEmojiAsDefaultStyleExceptions = config.mEmojiAsDefaultStyleExceptions;
        this.mEmojiSpanIndicatorEnabled = config.mEmojiSpanIndicatorEnabled;
        this.mEmojiSpanIndicatorColor = config.mEmojiSpanIndicatorColor;
        this.mMetadataLoader = config.mMetadataLoader;
        this.mMetadataLoadStrategy = config.mMetadataLoadStrategy;
        this.mGlyphChecker = config.mGlyphChecker;
        ArraySet arraySet = new ArraySet();
        this.mInitCallbacks = arraySet;
        SpanFactory spanFactory = config.mSpanFactory;
        this.mSpanFactory = spanFactory == null ? new DefaultSpanFactory() : spanFactory;
        if (config.mInitCallbacks != null && !config.mInitCallbacks.isEmpty()) {
            arraySet.addAll(config.mInitCallbacks);
        }
        this.mHelper = new CompatInternal19(this);
        loadMetadata();
    }

    static SpanFactory access$000(EmojiCompat emojiCompat) {
        return emojiCompat.mSpanFactory;
    }

    static GlyphChecker access$100(EmojiCompat emojiCompat) {
        return emojiCompat.mGlyphChecker;
    }

    public static EmojiCompat get() {
        EmojiCompat emojiCompat;
        synchronized (INSTANCE_LOCK) {
            emojiCompat = sInstance;
            Preconditions.checkState(emojiCompat != null, ProtectedFastSSH.s("ᣟ"));
        }
        return emojiCompat;
    }

    public static boolean handleDeleteSurroundingText(InputConnection inputConnection, Editable editable, int i, int i2, boolean z) {
        return EmojiProcessor.handleDeleteSurroundingText(inputConnection, editable, i, i2, z);
    }

    public static boolean handleOnKeyDown(Editable editable, int i, KeyEvent keyEvent) {
        return EmojiProcessor.handleOnKeyDown(editable, i, keyEvent);
    }

    public static EmojiCompat init(Context context) {
        return init(context, null);
    }

    public static EmojiCompat init(Context context, DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory defaultEmojiCompatConfigFactory) {
        EmojiCompat emojiCompat;
        if (sHasDoneDefaultConfigLookup) {
            return sInstance;
        }
        if (defaultEmojiCompatConfigFactory == null) {
            defaultEmojiCompatConfigFactory = new DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory(null);
        }
        Config configCreate = defaultEmojiCompatConfigFactory.create(context);
        synchronized (CONFIG_LOCK) {
            if (!sHasDoneDefaultConfigLookup) {
                if (configCreate != null) {
                    init(configCreate);
                }
                sHasDoneDefaultConfigLookup = true;
            }
            emojiCompat = sInstance;
        }
        return emojiCompat;
    }

    public static EmojiCompat init(Config config) {
        EmojiCompat emojiCompat;
        EmojiCompat emojiCompat2 = sInstance;
        if (emojiCompat2 != null) {
            return emojiCompat2;
        }
        synchronized (INSTANCE_LOCK) {
            emojiCompat = sInstance;
            if (emojiCompat == null) {
                emojiCompat = new EmojiCompat(config);
                sInstance = emojiCompat;
            }
        }
        return emojiCompat;
    }

    public static boolean isConfigured() {
        return sInstance != null;
    }

    private boolean isInitialized() {
        return getLoadState() == 1;
    }

    private void loadMetadata() {
        this.mInitLock.writeLock().lock();
        try {
            if (this.mMetadataLoadStrategy == 0) {
                this.mLoadState = 0;
            }
            this.mInitLock.writeLock().unlock();
            if (getLoadState() == 0) {
                this.mHelper.loadMetadata();
            }
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public static EmojiCompat reset(Config config) {
        EmojiCompat emojiCompat;
        synchronized (INSTANCE_LOCK) {
            emojiCompat = new EmojiCompat(config);
            sInstance = emojiCompat;
        }
        return emojiCompat;
    }

    public static EmojiCompat reset(EmojiCompat emojiCompat) {
        EmojiCompat emojiCompat2;
        synchronized (INSTANCE_LOCK) {
            sInstance = emojiCompat;
            emojiCompat2 = sInstance;
        }
        return emojiCompat2;
    }

    public static void skipDefaultConfigurationLookup(boolean z) {
        synchronized (CONFIG_LOCK) {
            sHasDoneDefaultConfigLookup = z;
        }
    }

    public String getAssetSignature() {
        Preconditions.checkState(isInitialized(), ProtectedFastSSH.s("ᣢ"));
        return this.mHelper.getAssetSignature();
    }

    public int getEmojiEnd(CharSequence charSequence, int i) {
        return this.mHelper.getEmojiEnd(charSequence, i);
    }

    public int getEmojiMatch(CharSequence charSequence, int i) {
        Preconditions.checkState(isInitialized(), ProtectedFastSSH.s("ᣢ"));
        Preconditions.checkNotNull(charSequence, ProtectedFastSSH.s("ᣣ"));
        return this.mHelper.getEmojiMatch(charSequence, i);
    }

    public int getEmojiSpanIndicatorColor() {
        return this.mEmojiSpanIndicatorColor;
    }

    public int getEmojiStart(CharSequence charSequence, int i) {
        return this.mHelper.getEmojiStart(charSequence, i);
    }

    public int getLoadState() {
        this.mInitLock.readLock().lock();
        try {
            return this.mLoadState;
        } finally {
            this.mInitLock.readLock().unlock();
        }
    }

    @Deprecated
    public boolean hasEmojiGlyph(CharSequence charSequence) {
        Preconditions.checkState(isInitialized(), ProtectedFastSSH.s("ᣢ"));
        Preconditions.checkNotNull(charSequence, ProtectedFastSSH.s("ᣣ"));
        return this.mHelper.hasEmojiGlyph(charSequence);
    }

    @Deprecated
    public boolean hasEmojiGlyph(CharSequence charSequence, int i) {
        Preconditions.checkState(isInitialized(), ProtectedFastSSH.s("ᣢ"));
        Preconditions.checkNotNull(charSequence, ProtectedFastSSH.s("ᣣ"));
        return this.mHelper.hasEmojiGlyph(charSequence, i);
    }

    public boolean isEmojiSpanIndicatorEnabled() {
        return this.mEmojiSpanIndicatorEnabled;
    }

    public void load() {
        Preconditions.checkState(this.mMetadataLoadStrategy == 1, ProtectedFastSSH.s("ᣤ"));
        if (isInitialized()) {
            return;
        }
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 0) {
                this.mInitLock.writeLock().unlock();
                return;
            }
            this.mLoadState = 0;
            this.mInitLock.writeLock().unlock();
            this.mHelper.loadMetadata();
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    void onMetadataLoadFailed(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 2;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new ListenerDispatcher(arrayList, this.mLoadState, th));
        } catch (Throwable th2) {
            this.mInitLock.writeLock().unlock();
            throw th2;
        }
    }

    void onMetadataLoadSuccess() {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 1;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new ListenerDispatcher(arrayList, this.mLoadState));
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public CharSequence process(CharSequence charSequence) {
        return process(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence process(CharSequence charSequence, int i, int i2) {
        return process(charSequence, i, i2, Integer.MAX_VALUE);
    }

    public CharSequence process(CharSequence charSequence, int i, int i2, int i3) {
        return process(charSequence, i, i2, i3, 0);
    }

    public CharSequence process(CharSequence charSequence, int i, int i2, int i3, int i4) {
        boolean z;
        Preconditions.checkState(isInitialized(), ProtectedFastSSH.s("ᣢ"));
        Preconditions.checkArgumentNonnegative(i, ProtectedFastSSH.s("ᣥ"));
        Preconditions.checkArgumentNonnegative(i2, ProtectedFastSSH.s("ᣦ"));
        Preconditions.checkArgumentNonnegative(i3, ProtectedFastSSH.s("ᣧ"));
        Preconditions.checkArgument(i <= i2, ProtectedFastSSH.s("ᣨ"));
        if (charSequence == null) {
            return null;
        }
        Preconditions.checkArgument(i <= charSequence.length(), ProtectedFastSSH.s("ᣩ"));
        Preconditions.checkArgument(i2 <= charSequence.length(), ProtectedFastSSH.s("ᣪ"));
        if (charSequence.length() == 0 || i == i2) {
            return charSequence;
        }
        if (i4 != 1) {
            z = i4 != 2 ? this.mReplaceAll : false;
        } else {
            z = true;
        }
        return this.mHelper.process(charSequence, i, i2, i3, z);
    }

    public void registerInitCallback(InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, ProtectedFastSSH.s("ᣫ"));
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 1 || this.mLoadState == 2) {
                this.mMainHandler.post(new ListenerDispatcher(initCallback, this.mLoadState));
            } else {
                this.mInitCallbacks.add(initCallback);
            }
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    public void unregisterInitCallback(InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, ProtectedFastSSH.s("ᣫ"));
        this.mInitLock.writeLock().lock();
        try {
            this.mInitCallbacks.remove(initCallback);
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    public void updateEditorInfo(EditorInfo editorInfo) {
        if (!isInitialized() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.mHelper.updateEditorInfoAttrs(editorInfo);
    }
}
