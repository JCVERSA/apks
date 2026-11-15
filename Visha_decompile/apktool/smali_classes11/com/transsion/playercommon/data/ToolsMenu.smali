.class public Lcom/transsion/playercommon/data/ToolsMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public flag:I

.field public imageViewResId:I

.field public showName:Z

.field public showVersion:Z

.field public textViewResId:I

.field public toolName:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/ToolsMenu;->showVersion:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/ToolsMenu;->showVersion:Z

    .line 5
    iput p1, p0, Lcom/transsion/playercommon/data/ToolsMenu;->imageViewResId:I

    .line 6
    iput p2, p0, Lcom/transsion/playercommon/data/ToolsMenu;->textViewResId:I

    .line 7
    iput p3, p0, Lcom/transsion/playercommon/data/ToolsMenu;->flag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/ToolsMenu;->showVersion:Z

    .line 10
    iput p1, p0, Lcom/transsion/playercommon/data/ToolsMenu;->imageViewResId:I

    .line 11
    iput-object p2, p0, Lcom/transsion/playercommon/data/ToolsMenu;->toolName:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/transsion/playercommon/data/ToolsMenu;->flag:I

    return-void
.end method
