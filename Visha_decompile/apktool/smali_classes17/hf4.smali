.class public final Lhf4;
.super Lbb2;
.source "SourceFile"


# static fields
.field public static final g:Lhf4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhf4;

    invoke-direct {v0}, Lhf4;-><init>()V

    sput-object v0, Lhf4;->g:Lhf4;

    const-string v0, "getDictNumber"

    sput-object v0, Lhf4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbb2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lhf4;->h:Ljava/lang/String;

    return-object p0
.end method
