package org.mozilla.javascript.tools.debugger;

import defpackage.ar6;
import defpackage.c65;
import defpackage.kn6;
import defpackage.rn6;
import defpackage.yr3;
import java.awt.ActiveEvent;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.MenuComponent;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import javax.swing.Icon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JDesktopPane;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JSplitPane;
import javax.swing.JToolBar;
import javax.swing.SwingUtilities;
import javax.swing.filechooser.FileFilter;
import javax.swing.text.BadLocationException;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.SecurityUtilities;

public class SwingGui extends JFrame implements GuiCallback {
    private static final long serialVersionUID = -8217029773456711621L;
    private EventQueue awtEventQueue;
    private c65 console;
    private org.mozilla.javascript.tools.debugger.a context;
    private org.mozilla.javascript.tools.debugger.b currentWindow;
    private JDesktopPane desk;
    Dim dim;
    JFileChooser dlg;
    private Runnable exitAction;
    private final Map<String, org.mozilla.javascript.tools.debugger.b> fileWindows;
    private kn6 menubar;
    private JSplitPane split1;
    private JLabel statusBar;
    private JToolBar toolBar;
    private final Map<String, JFrame> toplevels;

    public class a extends FileFilter {
        public a() {
        }
    }

    public class b extends WindowAdapter {
        public b() {
        }
    }

    public SwingGui(Dim dim, String str) {
        super(str);
        this.toplevels = Collections.synchronizedMap(new HashMap());
        this.fileWindows = Collections.synchronizedMap(new TreeMap());
        this.dim = dim;
        init();
        dim.setGuiCallback(this);
    }

    private String chooseFile(String str) {
        this.dlg.setDialogTitle(str);
        String systemProperty = SecurityUtilities.getSystemProperty("user.dir");
        File file = systemProperty != null ? new File(systemProperty) : null;
        if (file != null) {
            this.dlg.setCurrentDirectory(file);
        }
        if (this.dlg.showOpenDialog(this) == 0) {
            try {
                String canonicalPath = this.dlg.getSelectedFile().getCanonicalPath();
                File parentFile = this.dlg.getSelectedFile().getParentFile();
                Properties properties = System.getProperties();
                properties.put("user.dir", parentFile.getPath());
                System.setProperties(properties);
                return canonicalPath;
            } catch (IOException | SecurityException unused) {
            }
        }
        return null;
    }

    public void exit() {
        Runnable runnable = this.exitAction;
        if (runnable != null) {
            SwingUtilities.invokeLater(runnable);
        }
        this.dim.setReturnValue(5);
    }

    private JInternalFrame getSelectedFrame() {
        JInternalFrame[] allFrames = this.desk.getAllFrames();
        for (int i = 0; i < allFrames.length; i++) {
            if (allFrames[i].isShowing()) {
                return allFrames[i];
            }
        }
        return allFrames[allFrames.length - 1];
    }

    public static String getShortName(String str) {
        int i;
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf < 0) {
            iLastIndexOf = str.lastIndexOf(92);
        }
        return (iLastIndexOf < 0 || (i = iLastIndexOf + 1) >= str.length()) ? str : str.substring(i);
    }

    private JMenu getWindowMenu() {
        return this.menubar.getMenu(3);
    }

    private void init() {
        kn6 kn6Var = new kn6(this);
        this.menubar = kn6Var;
        setJMenuBar(kn6Var);
        this.toolBar = new JToolBar();
        String[] strArr = {"Break (Pause)", "Go (F5)", "Step Into (F11)", "Step Over (F7)", "Step Out (F8)"};
        JButton jButton = new JButton("Break");
        jButton.setToolTipText("Break");
        jButton.setActionCommand("Break");
        jButton.addActionListener(this.menubar);
        jButton.setEnabled(true);
        jButton.setToolTipText(strArr[0]);
        JButton jButton2 = new JButton("Go");
        jButton2.setToolTipText("Go");
        jButton2.setActionCommand("Go");
        jButton2.addActionListener(this.menubar);
        jButton2.setEnabled(false);
        jButton2.setToolTipText(strArr[1]);
        JButton jButton3 = new JButton("Step Into");
        jButton3.setToolTipText("Step Into");
        jButton3.setActionCommand("Step Into");
        jButton3.addActionListener(this.menubar);
        jButton3.setEnabled(false);
        jButton3.setToolTipText(strArr[2]);
        JButton jButton4 = new JButton("Step Over");
        jButton4.setToolTipText("Step Over");
        jButton4.setActionCommand("Step Over");
        jButton4.setEnabled(false);
        jButton4.addActionListener(this.menubar);
        jButton4.setToolTipText(strArr[3]);
        JButton jButton5 = new JButton("Step Out");
        jButton5.setToolTipText("Step Out");
        jButton5.setActionCommand("Step Out");
        jButton5.setEnabled(false);
        jButton5.addActionListener(this.menubar);
        jButton5.setToolTipText(strArr[4]);
        Dimension preferredSize = jButton4.getPreferredSize();
        jButton.setPreferredSize(preferredSize);
        jButton.setMinimumSize(preferredSize);
        jButton.setMaximumSize(preferredSize);
        jButton.setSize(preferredSize);
        jButton2.setPreferredSize(preferredSize);
        jButton2.setMinimumSize(preferredSize);
        jButton2.setMaximumSize(preferredSize);
        jButton3.setPreferredSize(preferredSize);
        jButton3.setMinimumSize(preferredSize);
        jButton3.setMaximumSize(preferredSize);
        jButton4.setPreferredSize(preferredSize);
        jButton4.setMinimumSize(preferredSize);
        jButton4.setMaximumSize(preferredSize);
        jButton5.setPreferredSize(preferredSize);
        jButton5.setMinimumSize(preferredSize);
        jButton5.setMaximumSize(preferredSize);
        this.toolBar.add(jButton);
        this.toolBar.add(jButton2);
        this.toolBar.add(jButton3);
        this.toolBar.add(jButton4);
        this.toolBar.add(jButton5);
        JPanel jPanel = new JPanel();
        jPanel.setLayout(new BorderLayout());
        getContentPane().add(this.toolBar, "North");
        getContentPane().add(jPanel, "Center");
        JDesktopPane jDesktopPane = new JDesktopPane();
        this.desk = jDesktopPane;
        jDesktopPane.setPreferredSize(new Dimension(600, 300));
        this.desk.setMinimumSize(new Dimension(150, 50));
        JDesktopPane jDesktopPane2 = this.desk;
        c65 c65Var = new c65("JavaScript Console");
        this.console = c65Var;
        jDesktopPane2.add(c65Var);
        org.mozilla.javascript.tools.debugger.a aVar = new org.mozilla.javascript.tools.debugger.a(this);
        this.context = aVar;
        aVar.setPreferredSize(new Dimension(600, 120));
        this.context.setMinimumSize(new Dimension(50, 50));
        JSplitPane jSplitPane = new JSplitPane(0, this.desk, this.context);
        this.split1 = jSplitPane;
        jSplitPane.setOneTouchExpandable(true);
        setResizeWeight(this.split1, 0.66d);
        jPanel.add(this.split1, "Center");
        JLabel jLabel = new JLabel();
        this.statusBar = jLabel;
        jLabel.setText("Thread: ");
        jPanel.add(this.statusBar, "South");
        this.dlg = new JFileChooser();
        this.dlg.addChoosableFileFilter(new a());
        addWindowListener(new b());
    }

    private String readFile(String str) {
        try {
            FileReader fileReader = new FileReader(str);
            try {
                String reader = Kit.readReader(fileReader);
                fileReader.close();
                return reader;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileReader.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e) {
            rn6.a(this, e.getMessage(), "Error reading " + str, 0);
            return null;
        }
    }

    private void setFilePosition(org.mozilla.javascript.tools.debugger.b bVar, int i) {
        yr3 yr3Var = bVar.c;
        try {
            if (i == -1) {
                bVar.c(-1);
                if (this.currentWindow == bVar) {
                    this.currentWindow = null;
                }
            } else {
                int lineStartOffset = yr3Var.getLineStartOffset(i - 1);
                org.mozilla.javascript.tools.debugger.b bVar2 = this.currentWindow;
                if (bVar2 != null && bVar2 != bVar) {
                    bVar2.c(-1);
                }
                bVar.c(lineStartOffset);
                this.currentWindow = bVar;
            }
        } catch (BadLocationException unused) {
        }
        if (bVar.isIcon()) {
            this.desk.getDesktopManager().deiconifyFrame(bVar);
        }
        this.desk.getDesktopManager().activateFrame(bVar);
        try {
            bVar.show();
            bVar.toFront();
            bVar.setSelected(true);
        } catch (Exception unused2) {
        }
    }

    public static void setResizeWeight(JSplitPane jSplitPane, double d) {
        try {
            JSplitPane.class.getMethod("setResizeWeight", Double.TYPE).invoke(jSplitPane, new Double(d));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
    }

    private void updateEnabled(boolean z) {
        ((kn6) getJMenuBar()).e(z);
        int componentCount = this.toolBar.getComponentCount();
        int i = 0;
        while (i < componentCount) {
            this.toolBar.getComponent(i).setEnabled(i == 0 ? !z : z);
            i++;
        }
        if (!z) {
            org.mozilla.javascript.tools.debugger.b bVar = this.currentWindow;
            if (bVar != null) {
                bVar.c(-1);
            }
            this.context.c(false);
            return;
        }
        this.toolBar.setEnabled(true);
        if (getExtendedState() == 1) {
            setExtendedState(0);
        }
        toFront();
        this.context.c(true);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0239  */
    /* JADX WARN: Code duplicated, block: B:133:? A[RETURN, SYNTHETIC] */
    public void actionPerformed(ActionEvent actionEvent) {
        int i;
        int i2;
        String file;
        String file2;
        String actionCommand = actionEvent.getActionCommand();
        if (!actionCommand.equals("Cut") && !actionCommand.equals("Copy") && !actionCommand.equals("Paste")) {
            if (actionCommand.equals("Step Over")) {
                i = 0;
            } else {
                i = 1;
                if (!actionCommand.equals("Step Into")) {
                    if (actionCommand.equals("Step Out")) {
                        i = 2;
                    } else if (actionCommand.equals("Go")) {
                        i = 3;
                    } else if (actionCommand.equals("Break")) {
                        this.dim.setBreak();
                    } else if (actionCommand.equals("Exit")) {
                        exit();
                    } else if (actionCommand.equals("Open")) {
                        String strChooseFile = chooseFile("Select a file to compile");
                        if (strChooseFile != null && (file2 = readFile(strChooseFile)) != null) {
                            RunProxy runProxy = new RunProxy(this, 1);
                            runProxy.fileName = strChooseFile;
                            runProxy.text = file2;
                            new Thread(runProxy).start();
                        }
                    } else if (actionCommand.equals("Load")) {
                        String strChooseFile2 = chooseFile("Select a file to execute");
                        if (strChooseFile2 != null && (file = readFile(strChooseFile2)) != null) {
                            RunProxy runProxy2 = new RunProxy(this, 2);
                            runProxy2.fileName = strChooseFile2;
                            runProxy2.text = file;
                            new Thread(runProxy2).start();
                        }
                    } else if (actionCommand.equals("More Windows...")) {
                        new ar6(this, this.fileWindows, "Window", "Files").a(this);
                    } else if (actionCommand.equals("Console")) {
                        if (this.console.isIcon()) {
                            this.desk.getDesktopManager().deiconifyFrame(this.console);
                        }
                        this.console.show();
                        this.desk.getDesktopManager().activateFrame(this.console);
                        this.console.a.requestFocus();
                    } else if (!actionCommand.equals("Cut") && !actionCommand.equals("Copy") && !actionCommand.equals("Paste")) {
                        if (actionCommand.equals("Go to function...")) {
                            new c(this, "Go to function", "Function").a(this);
                        } else if (actionCommand.equals("Go to line...")) {
                            String str = (String) JOptionPane.showInputDialog(this, "Line number", "Go to line...", 3, (Icon) null, (Object[]) null, (Object) null);
                            if (str == null || str.trim().length() == 0) {
                                return;
                            } else {
                                try {
                                    showFileWindow(null, Integer.parseInt(str));
                                } catch (NumberFormatException | Exception unused) {
                                }
                            }
                        } else if (actionCommand.equals("Tile")) {
                            JComponent[] allFrames = this.desk.getAllFrames();
                            int length = allFrames.length;
                            int iSqrt = (int) Math.sqrt(length);
                            if (iSqrt * iSqrt < length) {
                                i2 = iSqrt + 1;
                                if (iSqrt * i2 < length) {
                                    iSqrt = i2;
                                } else {
                                    i2 = iSqrt;
                                    iSqrt = i2;
                                }
                            } else {
                                i2 = iSqrt;
                            }
                            Dimension size = this.desk.getSize();
                            int i3 = size.width / iSqrt;
                            int i4 = size.height / i2;
                            int i5 = 0;
                            for (int i6 = 0; i6 < i2; i6++) {
                                int i7 = 0;
                                for (int i8 = 0; i8 < iSqrt; i8++) {
                                    int i9 = (i6 * iSqrt) + i8;
                                    if (i9 >= allFrames.length) {
                                        break;
                                    }
                                    JComponent jComponent = allFrames[i9];
                                    try {
                                        jComponent.setIcon(false);
                                        jComponent.setMaximum(false);
                                    } catch (Exception unused2) {
                                    }
                                    this.desk.getDesktopManager().setBoundsForFrame(jComponent, i7, i5, i3, i4);
                                    i7 += i3;
                                }
                                i5 += i4;
                            }
                        } else if (actionCommand.equals("Cascade")) {
                            JInternalFrame[] allFrames2 = this.desk.getAllFrames();
                            int length2 = allFrames2.length;
                            int height = this.desk.getHeight() / length2;
                            if (height > 30) {
                                height = 30;
                            }
                            int i10 = length2 - 1;
                            int i11 = 0;
                            int i12 = 0;
                            while (i10 >= 0) {
                                JInternalFrame jInternalFrame = allFrames2[i10];
                                try {
                                    jInternalFrame.setIcon(false);
                                    jInternalFrame.setMaximum(false);
                                } catch (Exception unused3) {
                                }
                                Dimension preferredSize = jInternalFrame.getPreferredSize();
                                this.desk.getDesktopManager().setBoundsForFrame(jInternalFrame, i11, i12, preferredSize.width, preferredSize.height);
                                i10--;
                                i11 += height;
                                i12 += height;
                            }
                        } else {
                            org.mozilla.javascript.tools.debugger.b fileWindow = getFileWindow(actionCommand);
                            if (fileWindow != null) {
                                if (fileWindow.isIcon()) {
                                    fileWindow.setIcon(false);
                                }
                                fileWindow.setVisible(true);
                                fileWindow.moveToFront();
                                fileWindow.setSelected(true);
                            }
                        }
                    }
                }
            }
            if (i != -1) {
                updateEnabled(false);
                this.dim.setReturnValue(i);
            }
        }
        ActionListener selectedFrame = getSelectedFrame();
        if (selectedFrame != null && (selectedFrame instanceof ActionListener)) {
            selectedFrame.actionPerformed(actionEvent);
        }
        i = -1;
        if (i != -1) {
            updateEnabled(false);
            this.dim.setReturnValue(i);
        }
    }

    public void addTopLevel(String str, JFrame jFrame) {
        if (jFrame != this) {
            this.toplevels.put(str, jFrame);
        }
    }

    public void createFileWindow(Dim.SourceInfo sourceInfo, int i) {
        String strUrl = sourceInfo.url();
        org.mozilla.javascript.tools.debugger.b bVar = new org.mozilla.javascript.tools.debugger.b(this, sourceInfo);
        this.fileWindows.put(strUrl, bVar);
        if (i != -1) {
            org.mozilla.javascript.tools.debugger.b bVar2 = this.currentWindow;
            if (bVar2 != null) {
                bVar2.c(-1);
            }
            try {
                try {
                    bVar.c(bVar.c.getLineStartOffset(i - 1));
                } catch (BadLocationException unused) {
                    bVar.c(-1);
                }
            } catch (BadLocationException unused2) {
                bVar.c(bVar.c.getLineStartOffset(0));
            }
        }
        this.desk.add(bVar);
        if (i != -1) {
            this.currentWindow = bVar;
        }
        this.menubar.a(strUrl);
        bVar.setVisible(true);
        try {
            bVar.setMaximum(true);
            bVar.setSelected(true);
            bVar.moveToFront();
        } catch (Exception unused3) {
        }
    }

    @Override
    public void dispatchNextGuiEvent() throws InterruptedException {
        EventQueue systemEventQueue = this.awtEventQueue;
        if (systemEventQueue == null) {
            systemEventQueue = Toolkit.getDefaultToolkit().getSystemEventQueue();
            this.awtEventQueue = systemEventQueue;
        }
        ActiveEvent nextEvent = systemEventQueue.getNextEvent();
        if (nextEvent instanceof ActiveEvent) {
            nextEvent.dispatch();
            return;
        }
        Object source = nextEvent.getSource();
        if (source instanceof Component) {
            ((Component) source).dispatchEvent(nextEvent);
        } else if (source instanceof MenuComponent) {
            ((MenuComponent) source).dispatchEvent(nextEvent);
        }
    }

    @Override
    public void enterInterrupt(Dim.StackFrame stackFrame, String str, String str2) {
        if (SwingUtilities.isEventDispatchThread()) {
            enterInterruptImpl(stackFrame, str, str2);
            return;
        }
        RunProxy runProxy = new RunProxy(this, 4);
        runProxy.lastFrame = stackFrame;
        runProxy.threadTitle = str;
        runProxy.alertMessage = str2;
        SwingUtilities.invokeLater(runProxy);
    }

    public void enterInterruptImpl(Dim.StackFrame stackFrame, String str, String str2) {
        this.statusBar.setText("Thread: " + str);
        showStopLine(stackFrame);
        if (str2 != null) {
            rn6.a(this, str2, "Exception in Script", 0);
        }
        updateEnabled(true);
        Dim.ContextData contextData = stackFrame.contextData();
        org.mozilla.javascript.tools.debugger.a aVar = this.context;
        JComboBox jComboBox = aVar.b;
        List list = aVar.c;
        aVar.a();
        int iFrameCount = contextData.frameCount();
        jComboBox.removeAllItems();
        jComboBox.setSelectedItem((Object) null);
        list.clear();
        for (int i = 0; i < iFrameCount; i++) {
            Dim.StackFrame frame = contextData.getFrame(i);
            String url = frame.getUrl();
            int lineNumber = frame.getLineNumber();
            jComboBox.insertItemAt("\"" + (url.length() > 20 ? "..." + url.substring(url.length() - 17) : url) + "\", line " + lineNumber, i);
            list.add("\"" + url + "\", line " + lineNumber);
        }
        this.context.b();
        jComboBox.setSelectedIndex(0);
        jComboBox.setMinimumSize(new Dimension(50, jComboBox.getMinimumSize().height));
    }

    public c65 getConsole() {
        return this.console;
    }

    public org.mozilla.javascript.tools.debugger.b getFileWindow(String str) {
        if (str == null || str.equals("<stdin>")) {
            return null;
        }
        return this.fileWindows.get(str);
    }

    public kn6 getMenubar() {
        return this.menubar;
    }

    @Override
    public boolean isGuiEventThread() {
        return SwingUtilities.isEventDispatchThread();
    }

    public void removeWindow(org.mozilla.javascript.tools.debugger.b bVar) {
        this.fileWindows.remove(bVar.b());
        JMenu windowMenu = getWindowMenu();
        int itemCount = windowMenu.getItemCount();
        int i = itemCount - 1;
        JMenuItem item = windowMenu.getItem(i);
        String shortName = getShortName(bVar.b());
        int i2 = 5;
        while (i2 < itemCount) {
            JMenuItem item2 = windowMenu.getItem(i2);
            if (item2 != null) {
                String text = item2.getText();
                if (text.substring(text.indexOf(32) + 1).equals(shortName)) {
                    windowMenu.remove(item2);
                    if (itemCount != 6) {
                        int i3 = i2 - 4;
                        while (i2 < i) {
                            JMenuItem item3 = windowMenu.getItem(i2);
                            if (item3 != null) {
                                String text2 = item3.getText();
                                if (text2.equals("More Windows...")) {
                                    break;
                                }
                                int iIndexOf = text2.indexOf(32);
                                StringBuilder sb = new StringBuilder();
                                int i4 = i3 + 48;
                                sb.append((char) i4);
                                sb.append(" ");
                                sb.append(text2.substring(iIndexOf + 1));
                                item3.setText(sb.toString());
                                item3.setMnemonic(i4);
                                i3++;
                            }
                            i2++;
                        }
                        if (itemCount - 6 != 0 || item == item2 || !item.getText().equals("More Windows...")) {
                            break;
                            break;
                            break;
                        } else {
                            windowMenu.remove(item);
                            break;
                        }
                    }
                    windowMenu.remove(4);
                    break;
                }
            }
            i2++;
        }
        windowMenu.revalidate();
    }

    public void setExitAction(Runnable runnable) {
        this.exitAction = runnable;
    }

    public void setVisible(boolean z) {
        super.setVisible(z);
        if (z) {
            this.console.a.requestFocus();
            this.context.k.setDividerLocation(0.5d);
            try {
                this.console.setMaximum(true);
                this.console.setSelected(true);
                this.console.show();
                this.console.a.requestFocus();
            } catch (Exception unused) {
            }
        }
    }

    public void showFileWindow(String str, int i) {
        org.mozilla.javascript.tools.debugger.b fileWindow;
        if (str != null) {
            fileWindow = getFileWindow(str);
        } else {
            JInternalFrame selectedFrame = getSelectedFrame();
            fileWindow = (selectedFrame == null || !(selectedFrame instanceof org.mozilla.javascript.tools.debugger.b)) ? this.currentWindow : (org.mozilla.javascript.tools.debugger.b) selectedFrame;
        }
        if (fileWindow == null && str != null) {
            createFileWindow(this.dim.sourceInfo(str), -1);
            fileWindow = getFileWindow(str);
        }
        if (fileWindow == null) {
            return;
        }
        if (i > -1) {
            int iA = fileWindow.a(i - 1);
            int iA2 = fileWindow.a(i) - 1;
            if (iA <= 0) {
                return;
            }
            fileWindow.c.a(iA);
            fileWindow.c.setCaretPosition(iA);
            fileWindow.c.moveCaretPosition(iA2);
        }
        try {
            if (fileWindow.isIcon()) {
                fileWindow.setIcon(false);
            }
            fileWindow.setVisible(true);
            fileWindow.moveToFront();
            fileWindow.setSelected(true);
            requestFocus();
            fileWindow.requestFocus();
            fileWindow.c.requestFocus();
        } catch (Exception unused) {
        }
    }

    public void showStopLine(Dim.StackFrame stackFrame) {
        String url = stackFrame.getUrl();
        if (url == null || url.equals("<stdin>")) {
            if (this.console.isVisible()) {
                this.console.show();
            }
        } else {
            showFileWindow(url, -1);
            int lineNumber = stackFrame.getLineNumber();
            org.mozilla.javascript.tools.debugger.b fileWindow = getFileWindow(url);
            if (fileWindow != null) {
                setFilePosition(fileWindow, lineNumber);
            }
        }
    }

    public boolean updateFileWindow(Dim.SourceInfo sourceInfo) {
        org.mozilla.javascript.tools.debugger.b fileWindow = getFileWindow(sourceInfo.url());
        if (fileWindow == null) {
            return false;
        }
        fileWindow.d(sourceInfo);
        fileWindow.show();
        return true;
    }

    @Override
    public void updateSourceText(Dim.SourceInfo sourceInfo) {
        RunProxy runProxy = new RunProxy(this, 3);
        runProxy.sourceInfo = sourceInfo;
        SwingUtilities.invokeLater(runProxy);
    }
}
