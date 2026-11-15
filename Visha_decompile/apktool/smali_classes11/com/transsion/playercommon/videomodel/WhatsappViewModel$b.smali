.class public Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/videomodel/WhatsappViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    .line 3
    iput p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    .line 7
    iput-boolean p2, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    .line 8
    iput p3, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->c:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->c:I

    return p0
.end method


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->c:I

    return-void
.end method
