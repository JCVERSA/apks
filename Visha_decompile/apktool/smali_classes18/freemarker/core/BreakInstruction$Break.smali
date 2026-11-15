.class Lfreemarker/core/BreakInstruction$Break;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BreakInstruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Break"
.end annotation


# static fields
.field static final INSTANCE:Lfreemarker/core/BreakInstruction$Break;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfreemarker/core/BreakInstruction$Break;

    invoke-direct {v0}, Lfreemarker/core/BreakInstruction$Break;-><init>()V

    sput-object v0, Lfreemarker/core/BreakInstruction$Break;->INSTANCE:Lfreemarker/core/BreakInstruction$Break;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
