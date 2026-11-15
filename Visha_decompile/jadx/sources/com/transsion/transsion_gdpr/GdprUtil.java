package com.transsion.transsion_gdpr;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.graphics.Bitmap;
import android.text.SpannableStringBuilder;
import defpackage.id4;
import java.io.Serializable;
import java.nio.ByteBuffer;

public abstract class GdprUtil {
    public static CharSequence a(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0 || !charSequence.toString().contains("\u200b")) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        for (int length = spannableStringBuilder.length() - 1; length >= 1; length--) {
            if ("，。！？；：、,.!?;:）】》」』%)]}»\"'”’".indexOf(spannableStringBuilder.charAt(length)) >= 0) {
                int i = length - 1;
                if (spannableStringBuilder.charAt(i) == "\u200b".charAt(0)) {
                    spannableStringBuilder.delete(i, length);
                    spannableStringBuilder.insert(i, (CharSequence) "\u2060");
                }
            }
        }
        return spannableStringBuilder;
    }

    public static id4 b() {
        return PrivacyDialogFragment.L();
    }

    public static void c(id4 id4Var) {
        PrivacyDialogFragment.m0(id4Var);
    }

    public static boolean d(FragmentManager fragmentManager) {
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("privacy_fragment_tag");
        if (fragmentFindFragmentByTag != null) {
            return fragmentFindFragmentByTag.isAdded();
        }
        return false;
    }

    public static void e(FragmentManager fragmentManager) {
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("privacy_fragment_tag");
        if (fragmentFindFragmentByTag != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        }
    }

    public static void f(FragmentManager fragmentManager, GDPRConfig gDPRConfig) {
        PrivacyDialogFragment.a0().o0(gDPRConfig).s0(fragmentManager, "privacy_fragment_tag", true);
    }

    public static void g(FragmentManager fragmentManager, boolean z, GDPRConfig gDPRConfig) {
        PrivacyDialogFragment.a0().o0(gDPRConfig).s0(fragmentManager, "privacy_fragment_tag", z);
    }

    public static class GDPRConfig implements Serializable {
        public static final int GDPR_STYLE_DIALOG = 0;
        public static final int GDPR_STYLE_PAGE = 1;
        private static final long serialVersionUID = 1;
        private String announcementText;
        private String appIconBitmapConfig;
        private byte[] appIconBitmapData;
        private int appIconBitmapHeight;
        private int appIconBitmapWidth;
        private int appIconResId;
        private String clickPrivacyPolicyText;
        private String clickUserAgreementText;
        private String contentText;
        private boolean ignoreUserExperience;
        private boolean mIsDelSpaceFromAgree;
        private boolean mIsDelSpaceFromAnnouncement;
        private boolean mIsDelSpaceFromCancel;
        private boolean mIsDelSpaceFromContent;
        private boolean mIsDelSpaceFromTitle;
        private String negativeButtonText;
        private String positiveButtonText;
        private String sloganText;
        private String titleText;
        private boolean useLocalDirection;
        private int paddingTop = -1;
        private float verticalMargin = 0.0f;
        private int gdprStyle = 1;

        public GDPRConfig() {
        }

        private void clearAppIconBitmapData() {
            this.appIconBitmapData = null;
            this.appIconBitmapWidth = 0;
            this.appIconBitmapHeight = 0;
            this.appIconBitmapConfig = null;
        }

        public String getAnnouncementText() {
            return this.announcementText;
        }

        public Bitmap getAppIconBitmap() {
            byte[] bArr = this.appIconBitmapData;
            if (bArr == null || bArr.length == 0 || this.appIconBitmapWidth <= 0 || this.appIconBitmapHeight <= 0) {
                return null;
            }
            Bitmap.Config configValueOf = Bitmap.Config.ARGB_8888;
            String str = this.appIconBitmapConfig;
            if (str != null) {
                try {
                    configValueOf = Bitmap.Config.valueOf(str);
                } catch (IllegalArgumentException unused) {
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.appIconBitmapWidth, this.appIconBitmapHeight, configValueOf);
            bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(this.appIconBitmapData));
            return bitmapCreateBitmap;
        }

        public int getAppIconResId() {
            return this.appIconResId;
        }

        public String getClickPrivacyPolicyText() {
            return this.clickPrivacyPolicyText;
        }

        public String getClickUserAgreementText() {
            return this.clickUserAgreementText;
        }

        public String getContentText() {
            return this.contentText;
        }

        public boolean getDelSpaceFromAgree() {
            return this.mIsDelSpaceFromAgree;
        }

        public boolean getDelSpaceFromAnnouncement() {
            return this.mIsDelSpaceFromAnnouncement;
        }

        public boolean getDelSpaceFromCancel() {
            return this.mIsDelSpaceFromCancel;
        }

        public boolean getDelSpaceFromContent() {
            return this.mIsDelSpaceFromContent;
        }

        public boolean getDelSpaceFromTitle() {
            return this.mIsDelSpaceFromTitle;
        }

        public float getDialogWindowVerticalMargin() {
            return this.verticalMargin;
        }

        public int getGdprStyle() {
            return this.gdprStyle;
        }

        public String getNegativeButtonText() {
            return this.negativeButtonText;
        }

        public String getPositiveButtonText() {
            return this.positiveButtonText;
        }

        public String getSloganText() {
            return this.sloganText;
        }

        public String getTitleText() {
            return this.titleText;
        }

        public int getWindowPaddingTop() {
            return this.paddingTop;
        }

        public boolean isIgnoreUserExperience() {
            return this.ignoreUserExperience;
        }

        public boolean isUseLocalDirection() {
            return this.useLocalDirection;
        }

        public void setAnnouncementText(String str) {
            this.announcementText = str;
        }

        public void setAppIconBitmap(Bitmap bitmap) {
            if (bitmap == null) {
                clearAppIconBitmapData();
                return;
            }
            Bitmap.Config config = bitmap.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
                bitmap = bitmap.copy(config, false);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getByteCount());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            this.appIconBitmapData = byteBufferAllocate.array();
            this.appIconBitmapWidth = bitmap.getWidth();
            this.appIconBitmapHeight = bitmap.getHeight();
            this.appIconBitmapConfig = config.name();
            this.appIconResId = 0;
        }

        public void setAppIconResId(int i) {
            this.appIconResId = i;
            if (i != 0) {
                clearAppIconBitmapData();
            }
        }

        public void setClickPrivacyPolicyText(String str) {
            this.clickPrivacyPolicyText = str;
        }

        public void setClickUserAgreementText(String str) {
            this.clickUserAgreementText = str;
        }

        public void setContentText(String str) {
            this.contentText = str;
        }

        public void setDelSpaceFromAgree(boolean z) {
            this.mIsDelSpaceFromAgree = z;
        }

        public void setDelSpaceFromAnnouncement(boolean z) {
            this.mIsDelSpaceFromAnnouncement = z;
        }

        public void setDelSpaceFromCancel(boolean z) {
            this.mIsDelSpaceFromCancel = z;
        }

        public void setDelSpaceFromContent(boolean z) {
            this.mIsDelSpaceFromContent = z;
        }

        public void setDelSpaceFromTitle(boolean z) {
            this.mIsDelSpaceFromTitle = z;
        }

        public void setDialogWindowVerticalMargin(float f) {
            this.verticalMargin = f;
        }

        public void setGdprStyle(int i) {
            this.gdprStyle = i;
        }

        public void setIgnoreUserExperience(boolean z) {
            this.ignoreUserExperience = z;
        }

        public void setNegativeButtonText(String str) {
            this.negativeButtonText = str;
        }

        public void setPositiveButtonText(String str) {
            this.positiveButtonText = str;
        }

        public void setSloganText(String str) {
            this.sloganText = str;
        }

        public void setTitleText(String str) {
            this.titleText = str;
        }

        public void setUseLocalDirection(boolean z) {
            this.useLocalDirection = z;
        }

        public void setWindowPaddingTop(int i) {
            this.paddingTop = i;
        }

        public GDPRConfig(String str, String str2, String str3, String str4, String str5) {
            this.titleText = str;
            this.contentText = str2;
            this.announcementText = str3;
            this.clickUserAgreementText = str4;
            this.clickPrivacyPolicyText = str5;
        }
    }
}
