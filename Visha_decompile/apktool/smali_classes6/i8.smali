.class public final synthetic Li8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/DialogFragment;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8;->b:Landroidx/fragment/app/DialogFragment;

    iput-object p2, p0, Li8;->c:Ljava/util/List;

    iput-object p3, p0, Li8;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Li8;->b:Landroidx/fragment/app/DialogFragment;

    iget-object v1, p0, Li8;->c:Ljava/util/List;

    iget-object p0, p0, Li8;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lm8;->a(Landroidx/fragment/app/DialogFragment;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
