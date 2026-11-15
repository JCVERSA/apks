.class public final Lorg/acra/config/DialogConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/config/Configuration;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001cR\u0015\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001cR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0013R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lorg/acra/config/DialogConfiguration;",
        "Lorg/acra/config/Configuration;",
        "enabled",
        "",
        "reportDialogClass",
        "Ljava/lang/Class;",
        "Landroid/app/Activity;",
        "positiveButtonText",
        "",
        "negativeButtonText",
        "commentPrompt",
        "emailPrompt",
        "resIcon",
        "",
        "text",
        "title",
        "resTheme",
        "(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "getCommentPrompt",
        "()Ljava/lang/String;",
        "getEmailPrompt",
        "getEnabled",
        "()Z",
        "getNegativeButtonText",
        "getPositiveButtonText",
        "getReportDialogClass",
        "()Ljava/lang/Class;",
        "getResIcon",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getResTheme",
        "getText",
        "getTitle",
        "acra-dialog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final commentPrompt:Ljava/lang/String;

.field private final emailPrompt:Ljava/lang/String;

.field private final enabled:Z

.field private final negativeButtonText:Ljava/lang/String;

.field private final positiveButtonText:Ljava/lang/String;

.field private final reportDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final resIcon:Ljava/lang/Integer;

.field private final resTheme:Ljava/lang/Integer;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lorg/acra/config/DialogConfiguration;-><init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p7    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "reportDialogClass"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/acra/config/DialogConfiguration;->enabled:Z

    .line 4
    iput-object p2, p0, Lorg/acra/config/DialogConfiguration;->reportDialogClass:Ljava/lang/Class;

    .line 5
    iput-object p3, p0, Lorg/acra/config/DialogConfiguration;->positiveButtonText:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/acra/config/DialogConfiguration;->negativeButtonText:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lorg/acra/config/DialogConfiguration;->commentPrompt:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lorg/acra/config/DialogConfiguration;->emailPrompt:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lorg/acra/config/DialogConfiguration;->resIcon:Ljava/lang/Integer;

    .line 10
    iput-object p8, p0, Lorg/acra/config/DialogConfiguration;->text:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lorg/acra/config/DialogConfiguration;->title:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lorg/acra/config/DialogConfiguration;->resTheme:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 13
    const-class v2, Lorg/acra/dialog/CrashReportDialog;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v4

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v4

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const v8, 0x1080027

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v4

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v4

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v4, p10

    :goto_9
    move p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v4

    .line 15
    invoke-direct/range {p0 .. p10}, Lorg/acra/config/DialogConfiguration;-><init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/DialogConfiguration;->enabled:Z

    return p0
.end method

.method public final getCommentPrompt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->commentPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmailPrompt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->emailPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/DialogConfiguration;->enabled:Z

    return p0
.end method

.method public final getNegativeButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->negativeButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final getPositiveButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->positiveButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final getReportDialogClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->reportDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final getResIcon()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->resIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getResTheme()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->resTheme:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/DialogConfiguration;->title:Ljava/lang/String;

    return-object p0
.end method
