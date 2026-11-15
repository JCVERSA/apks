package xz;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.mvel2.ast.LineLabel;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.integration.VariableResolverFactory;

public class b {

    private int f75992b = 0;

    private Map f75991a = new HashMap();

    public int a(LineLabel lineLabel, VariableResolverFactory variableResolverFactory, CompiledExpression compiledExpression) {
        if (this.f75992b == 1 || b(lineLabel)) {
            throw new RuntimeException("no debugger registered to handle breakpoint");
        }
        return 0;
    }

    public boolean b(LineLabel lineLabel) {
        return this.f75991a.containsKey(lineLabel.getSourceFile()) && ((Set) this.f75991a.get(lineLabel.getSourceFile())).contains(Integer.valueOf(lineLabel.getLineNumber()));
    }
}
