.class public final Lof4;
.super Lib2;
.source "SourceFile"


# static fields
.field public static final f:Lof4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lof4;

    invoke-direct {v0}, Lof4;-><init>()V

    sput-object v0, Lof4;->f:Lof4;

    const-string v0, "getDictOptUrl"

    sput-object v0, Lof4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lib2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lof4;->g:Ljava/lang/String;

    return-object p0
.end method
