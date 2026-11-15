.class public Lcom/transsion/playercommon/data/CustomIconItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private iconResId:I

.field private iconVisible:Z

.field private text:Ljava/lang/String;

.field private textVisible:Z

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->iconResId:I

    iput-object p2, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->iconVisible:Z

    iput-boolean p4, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->textVisible:Z

    iput p5, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->type:I

    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->iconResId:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->type:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->iconVisible:Z

    return p0
.end method

.method public isTextVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/CustomIconItemData;->textVisible:Z

    return p0
.end method
