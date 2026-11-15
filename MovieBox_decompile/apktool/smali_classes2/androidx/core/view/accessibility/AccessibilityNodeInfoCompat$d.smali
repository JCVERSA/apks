.class abstract Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public static a(IIZIII)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 2
    .line 3
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->setRowCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->setColumnCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->setHierarchical(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->setSelectionMode(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->setItemCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->setImportantForAccessibilityItemCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getImportantForAccessibilityItemCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static c(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
