package org.mozilla.javascript.optimizer;

import java.util.Map;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.NodeTransformer;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ast.ScriptNode;

public class b extends NodeTransformer {
    public Map a;
    public ObjArray b;

    public b(Map map, ObjArray objArray) {
        this.a = map;
        this.b = objArray;
    }

    public final void a(Node node, ScriptNode scriptNode) {
        String string;
        OptFunctionNode optFunctionNode;
        if (scriptNode.getType() == 110) {
            Node firstChild = node.getFirstChild();
            Node next = firstChild.getNext();
            int i = 0;
            while (next != null) {
                next = next.getNext();
                i++;
            }
            if (i == 0) {
                OptFunctionNode.get(scriptNode).itsContainsCalls0 = true;
            }
            if (this.a != null) {
                if (firstChild.getType() == 39) {
                    string = firstChild.getString();
                } else if (firstChild.getType() == 33) {
                    string = firstChild.getFirstChild().getNext().getString();
                } else {
                    if (firstChild.getType() == 34) {
                        throw Kit.codeBug();
                    }
                    string = null;
                }
                if (string == null || (optFunctionNode = (OptFunctionNode) this.a.get(string)) == null || i != optFunctionNode.fnode.getParamCount() || optFunctionNode.fnode.requiresActivation() || i > 32) {
                    return;
                }
                node.putProp(9, optFunctionNode);
                if (optFunctionNode.isTargetOfDirectCall()) {
                    return;
                }
                int size = this.b.size();
                this.b.add(optFunctionNode);
                optFunctionNode.setDirectTargetIndex(size);
            }
        }
    }

    @Override
    public void visitCall(Node node, ScriptNode scriptNode) {
        a(node, scriptNode);
        super.visitCall(node, scriptNode);
    }

    @Override
    public void visitNew(Node node, ScriptNode scriptNode) {
        a(node, scriptNode);
        super.visitNew(node, scriptNode);
    }
}
