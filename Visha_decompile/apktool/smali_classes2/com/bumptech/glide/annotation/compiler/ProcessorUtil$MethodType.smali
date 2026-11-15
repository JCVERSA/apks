.class final enum Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/annotation/compiler/ProcessorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

.field public static final enum INSTANCE:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

.field public static final enum STATIC:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;->STATIC:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    new-instance v1, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    const-string v2, "INSTANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;->INSTANCE:Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    filled-new-array {v0, v1}, [Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;->$VALUES:[Lcom/bumptech/glide/annotation/compiler/ProcessorUtil$MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
