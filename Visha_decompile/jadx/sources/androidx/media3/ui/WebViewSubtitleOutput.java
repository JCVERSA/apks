package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.text.StringSubstitutor;

final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.Output {
    private static final float CSS_LINE_HEIGHT = 1.2f;
    private static final String DEFAULT_BACKGROUND_CSS_CLASS = "default_bg";
    private float bottomPaddingFraction;
    private final CanvasSubtitleOutput canvasSubtitleOutput;
    private float defaultTextSize;
    private int defaultTextSizeType;
    private CaptionStyleCompat style;
    private List<Cue> textCues;
    private final WebView webView;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$android$text$Layout$Alignment;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            $SwitchMap$android$text$Layout$Alignment = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }

    private static int anchorTypeToTranslatePercent(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String convertAlignmentToCss(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        int i = AnonymousClass2.$SwitchMap$android$text$Layout$Alignment[alignment.ordinal()];
        if (i != 1) {
            return i != 2 ? TtmlNode.CENTER : TtmlNode.END;
        }
        return TtmlNode.START;
    }

    private static String convertCaptionStyleToCssTextShadow(CaptionStyleCompat captionStyleCompat) {
        int i = captionStyleCompat.edgeType;
        if (i == 1) {
            return Util.formatInvariant("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", HtmlUtils.toCssRgba(captionStyleCompat.edgeColor));
        }
        if (i == 2) {
            return Util.formatInvariant("0.1em 0.12em 0.15em %s", HtmlUtils.toCssRgba(captionStyleCompat.edgeColor));
        }
        if (i != 3) {
            return i != 4 ? "unset" : Util.formatInvariant("-0.05em -0.05em 0.15em %s", HtmlUtils.toCssRgba(captionStyleCompat.edgeColor));
        }
        return Util.formatInvariant("0.06em 0.08em 0.15em %s", HtmlUtils.toCssRgba(captionStyleCompat.edgeColor));
    }

    private String convertTextSizeToCss(int i, float f) {
        float fResolveTextSize = SubtitleViewUtils.resolveTextSize(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fResolveTextSize == -3.4028235E38f ? "unset" : Util.formatInvariant("%.2fpx", Float.valueOf(fResolveTextSize / getContext().getResources().getDisplayMetrics().density));
    }

    private static String convertVerticalTypeToCss(int i) {
        if (i != 1) {
            return i != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    private static String getBlockShearTransformFunction(Cue cue) {
        float f = cue.shearDegrees;
        if (f == 0.0f) {
            return "";
        }
        int i = cue.verticalType;
        return Util.formatInvariant("%s(%.2fdeg)", (i == 2 || i == 1) ? "skewY" : "skewX", Float.valueOf(f));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:28:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:31:0x0119  */
    /* JADX WARN: Code duplicated, block: B:32:0x011c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0133 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x0135  */
    /* JADX WARN: Code duplicated, block: B:39:0x013c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x013f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0145 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x0154  */
    /* JADX WARN: Code duplicated, block: B:54:0x017f  */
    /* JADX WARN: Code duplicated, block: B:60:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:64:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:65:0x01f3  */
    private void updateWebView() {
        String invariant;
        int iAnchorTypeToTranslatePercent;
        String invariant2;
        boolean z;
        float f;
        String invariant3;
        int i;
        int i2;
        String str;
        String str2;
        Object obj;
        Object obj2;
        SpannedToHtmlConverter.HtmlAndCss htmlAndCssConvert;
        Layout.Alignment alignment;
        String str3;
        boolean z2;
        StringBuilder sb = new StringBuilder();
        String cssRgba = HtmlUtils.toCssRgba(this.style.foregroundColor);
        String strConvertTextSizeToCss = convertTextSizeToCss(this.defaultTextSizeType, this.defaultTextSize);
        float f2 = CSS_LINE_HEIGHT;
        sb.append(Util.formatInvariant("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", cssRgba, strConvertTextSizeToCss, Float.valueOf(CSS_LINE_HEIGHT), convertCaptionStyleToCssTextShadow(this.style)));
        HashMap map = new HashMap();
        map.put(HtmlUtils.cssAllClassDescendantsSelector(DEFAULT_BACKGROUND_CSS_CLASS), Util.formatInvariant("background-color:%s;", HtmlUtils.toCssRgba(this.style.backgroundColor)));
        int i3 = 0;
        while (i3 < this.textCues.size()) {
            Cue cue = this.textCues.get(i3);
            float f3 = cue.position;
            float f4 = f3 != -3.4028235E38f ? f3 * 100.0f : 50.0f;
            int iAnchorTypeToTranslatePercent2 = anchorTypeToTranslatePercent(cue.positionAnchor);
            float f5 = cue.line;
            if (f5 != -3.4028235E38f) {
                if (cue.lineType != 1) {
                    invariant = Util.formatInvariant("%.2f%%", Float.valueOf(f5 * 100.0f));
                    iAnchorTypeToTranslatePercent = cue.verticalType == 1 ? -anchorTypeToTranslatePercent(cue.lineAnchor) : anchorTypeToTranslatePercent(cue.lineAnchor);
                } else {
                    if (f5 >= 0.0f) {
                        invariant2 = Util.formatInvariant("%.2fem", Float.valueOf(f5 * f2));
                        z = false;
                    } else {
                        invariant2 = Util.formatInvariant("%.2fem", Float.valueOf(((-f5) - 1.0f) * f2));
                        z = true;
                    }
                    iAnchorTypeToTranslatePercent = 0;
                }
                f = cue.size;
                if (f != -3.4028235E38f) {
                    invariant3 = Util.formatInvariant("%.2f%%", Float.valueOf(f * 100.0f));
                } else {
                    invariant3 = "fit-content";
                }
                String str4 = invariant3;
                String strConvertAlignmentToCss = convertAlignmentToCss(cue.textAlignment);
                String strConvertVerticalTypeToCss = convertVerticalTypeToCss(cue.verticalType);
                String strConvertTextSizeToCss2 = convertTextSizeToCss(cue.textSizeType, cue.textSize);
                if (cue.windowColorSet) {
                    i = cue.windowColor;
                } else {
                    i = this.style.windowColor;
                }
                String cssRgba2 = HtmlUtils.toCssRgba(i);
                i2 = cue.verticalType;
                str = TtmlNode.RIGHT;
                if (i2 != 1) {
                    if (z) {
                        str = TtmlNode.LEFT;
                    }
                    str2 = str;
                    obj = "top";
                } else if (i2 != 2) {
                    str2 = z ? "bottom" : "top";
                    obj = TtmlNode.LEFT;
                } else {
                    if (!z) {
                        str = TtmlNode.LEFT;
                    }
                    str2 = str;
                    obj = "top";
                }
                if (i2 != 2 || i2 == 1) {
                    obj2 = "height";
                    int i4 = iAnchorTypeToTranslatePercent;
                    iAnchorTypeToTranslatePercent = iAnchorTypeToTranslatePercent2;
                    iAnchorTypeToTranslatePercent2 = i4;
                } else {
                    obj2 = "width";
                }
                htmlAndCssConvert = SpannedToHtmlConverter.convert(cue.text, getContext().getResources().getDisplayMetrics().density);
                for (String str5 : map.keySet()) {
                    str3 = (String) map.put(str5, (String) map.get(str5));
                    if (str3 != null || str3.equals(map.get(str5))) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Assertions.checkState(z2);
                }
                sb.append(Util.formatInvariant("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i3), obj, Float.valueOf(f4), str2, invariant2, obj2, str4, strConvertAlignmentToCss, strConvertVerticalTypeToCss, strConvertTextSizeToCss2, cssRgba2, Integer.valueOf(iAnchorTypeToTranslatePercent2), Integer.valueOf(iAnchorTypeToTranslatePercent), getBlockShearTransformFunction(cue)));
                sb.append(Util.formatInvariant("<span class='%s'>", DEFAULT_BACKGROUND_CSS_CLASS));
                alignment = cue.multiRowAlignment;
                if (alignment != null) {
                    sb.append(Util.formatInvariant("<span style='display:inline-block; text-align:%s;'>", convertAlignmentToCss(alignment)));
                    sb.append(htmlAndCssConvert.html);
                    sb.append("</span>");
                } else {
                    sb.append(htmlAndCssConvert.html);
                }
                sb.append("</span>");
                sb.append("</div>");
                i3++;
                f2 = CSS_LINE_HEIGHT;
            } else {
                invariant = Util.formatInvariant("%.2f%%", Float.valueOf((1.0f - this.bottomPaddingFraction) * 100.0f));
                iAnchorTypeToTranslatePercent = -100;
            }
            invariant2 = invariant;
            z = false;
            f = cue.size;
            if (f != -3.4028235E38f) {
                invariant3 = Util.formatInvariant("%.2f%%", Float.valueOf(f * 100.0f));
            } else {
                invariant3 = "fit-content";
            }
            String str6 = invariant3;
            String strConvertAlignmentToCss2 = convertAlignmentToCss(cue.textAlignment);
            String strConvertVerticalTypeToCss2 = convertVerticalTypeToCss(cue.verticalType);
            String strConvertTextSizeToCss3 = convertTextSizeToCss(cue.textSizeType, cue.textSize);
            if (cue.windowColorSet) {
                i = cue.windowColor;
            } else {
                i = this.style.windowColor;
            }
            String cssRgba3 = HtmlUtils.toCssRgba(i);
            i2 = cue.verticalType;
            str = TtmlNode.RIGHT;
            if (i2 != 1) {
                if (z) {
                    str = TtmlNode.LEFT;
                }
                str2 = str;
                obj = "top";
            } else if (i2 != 2) {
                str2 = z ? "bottom" : "top";
                obj = TtmlNode.LEFT;
            } else {
                if (!z) {
                    str = TtmlNode.LEFT;
                }
                str2 = str;
                obj = "top";
            }
            if (i2 != 2) {
                obj2 = "height";
                int i5 = iAnchorTypeToTranslatePercent;
                iAnchorTypeToTranslatePercent = iAnchorTypeToTranslatePercent2;
                iAnchorTypeToTranslatePercent2 = i5;
            } else {
                obj2 = "height";
                int i6 = iAnchorTypeToTranslatePercent;
                iAnchorTypeToTranslatePercent = iAnchorTypeToTranslatePercent2;
                iAnchorTypeToTranslatePercent2 = i6;
            }
            htmlAndCssConvert = SpannedToHtmlConverter.convert(cue.text, getContext().getResources().getDisplayMetrics().density);
            while (r5.hasNext()) {
                str3 = (String) map.put(str5, (String) map.get(str5));
                if (str3 != null) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                Assertions.checkState(z2);
            }
            sb.append(Util.formatInvariant("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i3), obj, Float.valueOf(f4), str2, invariant2, obj2, str6, strConvertAlignmentToCss2, strConvertVerticalTypeToCss2, strConvertTextSizeToCss3, cssRgba3, Integer.valueOf(iAnchorTypeToTranslatePercent2), Integer.valueOf(iAnchorTypeToTranslatePercent), getBlockShearTransformFunction(cue)));
            sb.append(Util.formatInvariant("<span class='%s'>", DEFAULT_BACKGROUND_CSS_CLASS));
            alignment = cue.multiRowAlignment;
            if (alignment != null) {
                sb.append(Util.formatInvariant("<span style='display:inline-block; text-align:%s;'>", convertAlignmentToCss(alignment)));
                sb.append(htmlAndCssConvert.html);
                sb.append("</span>");
            } else {
                sb.append(htmlAndCssConvert.html);
            }
            sb.append("</span>");
            sb.append("</div>");
            i3++;
            f2 = CSS_LINE_HEIGHT;
        }
        sb.append("</div></body></html>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<html><head><style>");
        for (String str7 : map.keySet()) {
            sb2.append(str7);
            sb2.append("{");
            sb2.append((String) map.get(str7));
            sb2.append(StringSubstitutor.DEFAULT_VAR_END);
        }
        sb2.append("</style></head>");
        sb.insert(0, sb2.toString());
        this.webView.loadData(Base64.encodeToString(sb.toString().getBytes(StandardCharsets.UTF_8), 1), "text/html", "base64");
    }

    public void destroy() {
        this.webView.destroy();
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.textCues.isEmpty()) {
            return;
        }
        updateWebView();
    }

    @Override
    public void update(List<Cue> list, CaptionStyleCompat captionStyleCompat, float f, int i, float f2) {
        this.style = captionStyleCompat;
        this.defaultTextSize = f;
        this.defaultTextSizeType = i;
        this.bottomPaddingFraction = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Cue cue = list.get(i2);
            if (cue.bitmap != null) {
                arrayList.add(cue);
            } else {
                arrayList2.add(cue);
            }
        }
        if (!this.textCues.isEmpty() || !arrayList2.isEmpty()) {
            this.textCues = arrayList2;
            updateWebView();
        }
        this.canvasSubtitleOutput.update(arrayList, captionStyleCompat, f, i, f2);
        invalidate();
    }

    public WebViewSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.textCues = Collections.emptyList();
        this.style = CaptionStyleCompat.DEFAULT;
        this.defaultTextSize = 0.0533f;
        this.defaultTextSizeType = 0;
        this.bottomPaddingFraction = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.canvasSubtitleOutput = canvasSubtitleOutput;
        WebView webView = new WebView(context, attributeSet) {
            @Override
            public boolean onTouchEvent(MotionEvent motionEvent) {
                super.onTouchEvent(motionEvent);
                return false;
            }

            @Override
            public boolean performClick() {
                super.performClick();
                return false;
            }
        };
        this.webView = webView;
        webView.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(webView);
    }
}
