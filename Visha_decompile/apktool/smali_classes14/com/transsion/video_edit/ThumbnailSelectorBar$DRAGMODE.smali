.class final enum Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/video_edit/ThumbnailSelectorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DRAGMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

.field public static final enum NONE:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

.field public static final enum RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

.field public static final enum SEEK:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

.field public static final synthetic b:[Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    new-instance v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    new-instance v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    const-string v1, "SEEK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->SEEK:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    new-instance v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->NONE:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-static {}, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->a()[Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    move-result-object v0

    sput-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->b:[Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;
    .locals 4

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v1, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v2, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->SEEK:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v3, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->NONE:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;
    .locals 1

    const-class v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    return-object p0
.end method

.method public static values()[Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;
    .locals 1

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->b:[Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {v0}, [Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    return-object v0
.end method
