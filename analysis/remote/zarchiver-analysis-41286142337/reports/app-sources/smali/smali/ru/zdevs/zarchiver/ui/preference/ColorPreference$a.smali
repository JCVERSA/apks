.class public final Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/preference/ColorPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc0/b;

.field public final synthetic b:Lru/zdevs/zarchiver/ui/preference/ColorPreference;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/preference/ColorPreference;Lc0/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;->b:Lru/zdevs/zarchiver/ui/preference/ColorPreference;

    iput-object p2, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;->a:Lc0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;->a:Lc0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lc0/b;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lc0/b$a;

    .line 10
    .line 11
    iget p2, p2, Lc0/b$a;->c:I

    .line 12
    .line 13
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;->b:Lru/zdevs/zarchiver/ui/preference/ColorPreference;

    .line 14
    .line 15
    iput p2, v0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->b:I

    .line 16
    .line 17
    const/4 p2, -0x1

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
