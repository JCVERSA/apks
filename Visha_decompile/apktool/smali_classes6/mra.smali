.class public final synthetic Lmra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmra;->a:Landroid/content/Context;

    iput-object p2, p0, Lmra;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmra;->a:Landroid/content/Context;

    iget-object p0, p0, Lmra;->b:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Ltra;->b(Landroid/content/Context;Ljava/util/List;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method
