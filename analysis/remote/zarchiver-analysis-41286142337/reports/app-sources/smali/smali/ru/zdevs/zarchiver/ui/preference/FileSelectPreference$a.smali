.class public final Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$a;->a:Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lc0/e;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$a;->a:Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;

    .line 14
    .line 15
    iget-object p3, p2, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 16
    .line 17
    new-instance p4, Lh0/h;

    .line 18
    .line 19
    iget-object p1, p1, Lc0/e;->c:Lh0/h;

    .line 20
    .line 21
    invoke-direct {p4, p1}, Lh0/h;-><init>(Lh0/h;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p4}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lh0/h;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p2, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p2, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 36
    .line 37
    :cond_2
    return-void
.end method
