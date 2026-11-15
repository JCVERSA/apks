.class public final synthetic Lh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8;->a:Landroid/content/Context;

    iput-object p2, p0, Lh8;->b:Ljava/util/List;

    iput-object p3, p0, Lh8;->c:Ljava/util/List;

    iput-object p4, p0, Lh8;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lh8;->a:Landroid/content/Context;

    iget-object v1, p0, Lh8;->b:Ljava/util/List;

    iget-object v2, p0, Lh8;->c:Ljava/util/List;

    iget-object v3, p0, Lh8;->d:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lm8;->c(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method
