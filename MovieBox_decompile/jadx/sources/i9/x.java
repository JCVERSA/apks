package i9;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.p0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.tools.zip.UnixStat;

public final class x {

    private static final Pattern f61989c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    public int f61990a = -1;

    public int f61991b = -1;

    private boolean b(String str) {
        Matcher matcher = f61989c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i10 = Integer.parseInt((String) p0.j(matcher.group(1)), 16);
            int i11 = Integer.parseInt((String) p0.j(matcher.group(2)), 16);
            if (i10 <= 0 && i11 <= 0) {
                return false;
            }
            this.f61990a = i10;
            this.f61991b = i11;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean a() {
        return (this.f61990a == -1 || this.f61991b == -1) ? false : true;
    }

    public boolean c(Metadata metadata) {
        for (int i10 = 0; i10 < metadata.length(); i10++) {
            Metadata.Entry entry = metadata.get(i10);
            if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                if ("iTunSMPB".equals(commentFrame.description) && b(commentFrame.text)) {
                    return true;
                }
            } else if (entry instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entry;
                if ("com.apple.iTunes".equals(internalFrame.domain) && "iTunSMPB".equals(internalFrame.description) && b(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean d(int i10) {
        int i11 = i10 >> 12;
        int i12 = i10 & UnixStat.PERM_MASK;
        if (i11 <= 0 && i12 <= 0) {
            return false;
        }
        this.f61990a = i11;
        this.f61991b = i12;
        return true;
    }
}
