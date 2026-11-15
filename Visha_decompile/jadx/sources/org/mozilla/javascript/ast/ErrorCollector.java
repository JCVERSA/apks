package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.EvaluatorException;

public class ErrorCollector implements IdeErrorReporter {
    private List<ParseProblem> errors = new ArrayList();

    @Override
    public void error(String str, String str2, int i, String str3, int i2) {
        throw new UnsupportedOperationException();
    }

    public List<ParseProblem> getErrors() {
        return this.errors;
    }

    @Override
    public EvaluatorException runtimeError(String str, String str2, int i, String str3, int i2) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.errors.size() * 100);
        Iterator<ParseProblem> it = this.errors.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append("\n");
        }
        return sb.toString();
    }

    @Override
    public void warning(String str, String str2, int i, String str3, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void error(String str, String str2, int i, int i2) {
        this.errors.add(new ParseProblem(ParseProblem.Type.Error, str, str2, i, i2));
    }

    @Override
    public void warning(String str, String str2, int i, int i2) {
        this.errors.add(new ParseProblem(ParseProblem.Type.Warning, str, str2, i, i2));
    }
}
