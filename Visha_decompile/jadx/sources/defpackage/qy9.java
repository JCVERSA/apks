package defpackage;

import java.util.Comparator;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

public class qy9 extends yz4 {
    public qy9(int i) {
        super(i);
    }

    @Override
    public void d(py9 py9Var) {
        try {
            c(a(py9Var));
        } catch (FoundAdException unused) {
        } catch (Exception e) {
            b(e);
        }
    }

    @Override
    public StreamInfoItem a(py9 py9Var) throws FoundAdException {
        if (py9Var.s()) {
            throw new FoundAdException("Found ad");
        }
        StreamInfoItem streamInfoItem = new StreamInfoItem(g(), py9Var.getUrl(), py9Var.getName(), py9Var.u());
        try {
            streamInfoItem.setDuration(py9Var.getDuration());
        } catch (Exception e) {
            b(e);
        }
        try {
            streamInfoItem.setUploaderName(py9Var.b());
        } catch (Exception e2) {
            b(e2);
        }
        try {
            streamInfoItem.setTextualUploadDate(py9Var.f());
        } catch (Exception e3) {
            b(e3);
        }
        try {
            streamInfoItem.setUploadDate(py9Var.g());
        } catch (ParsingException e4) {
            b(e4);
        }
        try {
            streamInfoItem.setViewCount(py9Var.w());
        } catch (Exception e5) {
            b(e5);
        }
        try {
            streamInfoItem.setThumbnails(py9Var.j());
        } catch (Exception e6) {
            b(e6);
        }
        try {
            streamInfoItem.setUploaderUrl(py9Var.a());
        } catch (Exception e7) {
            b(e7);
        }
        try {
            streamInfoItem.setUploaderAvatars(py9Var.e());
        } catch (Exception e8) {
            b(e8);
        }
        try {
            streamInfoItem.setUploaderVerified(py9Var.c());
        } catch (Exception e9) {
            b(e9);
        }
        try {
            streamInfoItem.setShortDescription(py9Var.v());
        } catch (Exception e10) {
            b(e10);
        }
        try {
            streamInfoItem.setShortFormContent(py9Var.t());
        } catch (Exception e11) {
            b(e11);
        }
        return streamInfoItem;
    }

    public qy9(int i, Comparator comparator) {
        super(i, comparator);
    }
}
