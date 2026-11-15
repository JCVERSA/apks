package freemarker.template.utility;

import defpackage.bfa;
import defpackage.bga;
import defpackage.hga;
import defpackage.mga;
import defpackage.nga;
import defpackage.pfa;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateModelException;
import freemarker.template.a;
import java.io.Serializable;

public abstract class Constants {
    public static final a a = a.z6;
    public static final a b = a.y6;
    public static final mga c = (mga) mga.Y4;
    public static final hga d = new SimpleNumber(0);
    public static final hga e = new SimpleNumber(1);
    public static final hga f = new SimpleNumber(-1);
    public static final bga g;
    public static final bfa h;
    public static final nga i;
    public static final pfa j;

    public static class EmptyCollectionModel implements bfa, Serializable {
        private EmptyCollectionModel() {
        }

        @Override
        public bga iterator() throws TemplateModelException {
            return Constants.g;
        }
    }

    public static class EmptyHashModel implements pfa, Serializable {
        private EmptyHashModel() {
        }

        @Override
        public zfa get(String str) throws TemplateModelException {
            return null;
        }

        @Override
        public boolean isEmpty() throws TemplateModelException {
            return true;
        }

        @Override
        public bfa keys() throws TemplateModelException {
            return Constants.h;
        }

        @Override
        public int size() throws TemplateModelException {
            return 0;
        }

        @Override
        public bfa values() throws TemplateModelException {
            return Constants.h;
        }
    }

    public static class EmptyIteratorModel implements bga, Serializable {
        private EmptyIteratorModel() {
        }

        @Override
        public boolean hasNext() throws TemplateModelException {
            return false;
        }

        @Override
        public zfa next() throws TemplateModelException {
            throw new TemplateModelException("The collection has no more elements.");
        }
    }

    public static class EmptySequenceModel implements nga, Serializable {
        private EmptySequenceModel() {
        }

        @Override
        public zfa get(int i) throws TemplateModelException {
            return null;
        }

        @Override
        public int size() throws TemplateModelException {
            return 0;
        }
    }

    static {
        g = new EmptyIteratorModel();
        h = new EmptyCollectionModel();
        i = new EmptySequenceModel();
        j = new EmptyHashModel();
    }
}
