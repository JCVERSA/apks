package org.mozilla.javascript.tools.debugger.treetable;

import javax.swing.JTree;
import javax.swing.SwingUtilities;
import javax.swing.event.TreeExpansionListener;
import javax.swing.event.TreeModelListener;
import javax.swing.table.AbstractTableModel;

public class TreeTableModelAdapter extends AbstractTableModel {
    private static final long serialVersionUID = 48741114609209052L;
    JTree tree;
    TreeTableModel treeTableModel;

    public class a implements TreeExpansionListener {
        public a() {
        }
    }

    public class b implements TreeModelListener {
        public b() {
        }
    }

    public TreeTableModelAdapter(TreeTableModel treeTableModel, JTree jTree) {
        this.tree = jTree;
        this.treeTableModel = treeTableModel;
        jTree.addTreeExpansionListener(new a());
        treeTableModel.addTreeModelListener(new b());
    }

    public void delayedFireTableDataChanged() {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                TreeTableModelAdapter.this.fireTableDataChanged();
            }
        });
    }

    public Class<?> getColumnClass(int i) {
        return this.treeTableModel.getColumnClass(i);
    }

    public int getColumnCount() {
        return this.treeTableModel.getColumnCount();
    }

    public String getColumnName(int i) {
        return this.treeTableModel.getColumnName(i);
    }

    public int getRowCount() {
        return this.tree.getRowCount();
    }

    public Object getValueAt(int i, int i2) {
        return this.treeTableModel.getValueAt(nodeForRow(i), i2);
    }

    public boolean isCellEditable(int i, int i2) {
        return this.treeTableModel.isCellEditable(nodeForRow(i), i2);
    }

    public Object nodeForRow(int i) {
        return this.tree.getPathForRow(i).getLastPathComponent();
    }

    public void setValueAt(Object obj, int i, int i2) {
        this.treeTableModel.setValueAt(obj, nodeForRow(i), i2);
    }
}
