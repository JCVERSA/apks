package defpackage;

import android.os.Build;
import androidx.room.TypeConverter;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.utils.PlayCountDataManager;
import java.text.Collator;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.BooleanUtils;

public abstract class ns9 {
    public static boolean a;
    public static int b;
    public static boolean c;
    public static int d;
    public static Collator e = Collator.getInstance(Locale.CHINA);

    public static int f(MediaItem mediaItem, MediaItem mediaItem2, boolean z) {
        int iCompare = Long.compare(mediaItem.dateModified, mediaItem2.dateModified);
        return z ? iCompare : -iCompare;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v7, types: [int] */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static int g(MediaItem mediaItem, MediaItem mediaItem2) {
        if (mediaItem == null && mediaItem2 == null) {
            return 0;
        }
        if (mediaItem == null) {
            return -1;
        }
        if (mediaItem2 == null) {
            return 1;
        }
        String str = mediaItem.displayName;
        if (str == null && mediaItem2.displayName == null) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (mediaItem2.displayName == null) {
            return 1;
        }
        String lowerCase = str.toLowerCase();
        String str2 = mediaItem2.displayName;
        if (str2 == null) {
            str2 = "";
        }
        String lowerCase2 = str2.toLowerCase();
        String str3 = lowerCase;
        while (true) {
            try {
                Pattern patternCompile = Pattern.compile("([^0-9]*)(\\d+)(.*\\.[a-zA-Z0-9]+)$");
                Matcher matcher = patternCompile.matcher(str3);
                Matcher matcher2 = patternCompile.matcher(lowerCase2);
                if (!matcher.matches() || !matcher2.matches() || matcher.groupCount() != matcher2.groupCount() || !matcher.group(1).equals(matcher2.group(1))) {
                    break;
                }
                if (!matcher.group(2).equalsIgnoreCase(matcher2.group(2))) {
                    if (!matcher.group(3).equalsIgnoreCase(matcher2.group(3))) {
                        break;
                    }
                    int i = Integer.parseInt(matcher.group(2));
                    str3 = Integer.parseInt(matcher2.group(2));
                    if (i > str3) {
                        return 1;
                    }
                    return i < str3 ? -1 : 0;
                }
                String strGroup = matcher.group(3);
                lowerCase2 = matcher2.group(3);
                str3 = strGroup;
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        if (e == null) {
            e = Collator.getInstance(Locale.CHINA);
        }
        return e.compare(str3, lowerCase2);
    }

    public static int h(MediaItem mediaItem, MediaItem mediaItem2, int i, boolean z) {
        int iG = -1;
        if (mediaItem == null) {
            return -1;
        }
        if (i == 0) {
            return f(mediaItem, mediaItem2, z);
        }
        if (i == 1) {
            if (mediaItem.displayName != null && mediaItem2.displayName != null) {
                iG = g(mediaItem, mediaItem2);
            }
            return !z ? iG : -iG;
        }
        if (i == 2) {
            int iCompare = Long.compare(mediaItem.size, mediaItem2.size);
            return z ? iCompare : -iCompare;
        }
        if (i == 3) {
            int iCompare2 = Long.compare(mediaItem.duration, mediaItem2.duration);
            return z ? iCompare2 : -iCompare2;
        }
        if (i == 6) {
            int iCompare3 = Integer.compare(mediaItem.num, mediaItem2.num);
            return z ? iCompare3 : -iCompare3;
        }
        int i2 = mediaItem.playCount;
        int i3 = mediaItem2.playCount;
        if (i2 >= i3) {
            iG = i2 == i3 ? -g(mediaItem, mediaItem2) : 1;
        }
        return z ? iG : -iG;
    }

    public static String i() {
        int iJ = j();
        if (iJ == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("date_modified");
            sb.append(n() ? " ASC " : " DESC ");
            return sb.toString();
        }
        if (iJ == 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("_display_name");
            sb2.append(n() ? " ASC " : " DESC ");
            return sb2.toString();
        }
        if (iJ == 2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("_size");
            sb3.append(n() ? " ASC " : " DESC ");
            return sb3.toString();
        }
        if (iJ == 3) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("duration");
            sb4.append(n() ? " ASC " : " DESC ");
            return sb4.toString();
        }
        if (iJ != 6 || Build.VERSION.SDK_INT <= 29) {
            return "date_modified DESC ";
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("cd_track_number");
        sb5.append(n() ? " ASC " : " DESC ");
        return sb5.toString();
    }

    public static int j() {
        return d;
    }

    public static String k(boolean z) {
        return z ? l() : i();
    }

    public static String l() {
        int iM = m();
        if (iM == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("date_modified");
            sb.append(p() ? " ASC " : " DESC ");
            return sb.toString();
        }
        if (iM == 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("_display_name");
            sb2.append(p() ? " ASC " : " DESC ");
            return sb2.toString();
        }
        if (iM == 2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("_size");
            sb3.append(p() ? " ASC " : " DESC ");
            return sb3.toString();
        }
        if (iM != 3) {
            return "date_modified DESC ";
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("duration");
        sb4.append(p() ? " ASC " : " DESC ");
        return sb4.toString();
    }

    public static int m() {
        return b;
    }

    public static boolean n() {
        return c;
    }

    public static boolean o() {
        return b == 0;
    }

    public static boolean p() {
        return a;
    }

    public static int q(int i, boolean z, Object obj, Object obj2) {
        return h((AudioItem) obj, (AudioItem) obj2, i, z);
    }

    public static int r(Object obj, Object obj2) {
        return h((AudioItem) obj, (AudioItem) obj2, 0, false);
    }

    public static int s(int i, boolean z, Object obj, Object obj2) {
        return h((MediaItem) obj, (MediaItem) obj2, i, z);
    }

    @TypeConverter
    public static List<MediaItem> sortMediaItem(List<MediaItem> list) {
        return sortMediaItem(list, b, a);
    }

    public static int t(Object obj, Object obj2) {
        return h((MediaItem) obj, (MediaItem) obj2, 0, false);
    }

    public static int u(boolean z, AudioItem audioItem, AudioItem audioItem2) {
        int i = audioItem.playCount;
        int i2 = audioItem2.playCount;
        if (i < i2) {
            return z ? 1 : -1;
        }
        if (i > i2) {
            return z ? -1 : 1;
        }
        return 0;
    }

    public static List v(List list) {
        return w(list, d, c);
    }

    public static List w(List list, final int i, final boolean z) {
        if (d == 4) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaItem mediaItem = (MediaItem) it.next();
                mediaItem.playCount = PlayCountDataManager.b().a(mediaItem.data);
            }
        }
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ns9.q(i, z, obj, obj2);
            }
        });
        return list;
    }

    public static List x(List list) {
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ns9.r(obj, obj2);
            }
        });
        return list;
    }

    public static List y(List list) {
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ns9.t(obj, obj2);
            }
        });
        return list;
    }

    public static List z(List list, final boolean z) {
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ns9.u(z, (AudioItem) obj, (AudioItem) obj2);
            }
        });
        return list;
    }

    @TypeConverter
    private static List<MediaItem> sortMediaItem(List<MediaItem> list, final int i, final boolean z) {
        try {
            System.setProperty("java.util.Arrays.useLegacyMergeSort", BooleanUtils.TRUE);
            if (b == 4) {
                for (MediaItem mediaItem : list) {
                    mediaItem.playCount = PlayCountDataManager.b().a(mediaItem.data);
                }
            }
            list.sort(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return ns9.s(i, z, obj, obj2);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return list;
    }
}
