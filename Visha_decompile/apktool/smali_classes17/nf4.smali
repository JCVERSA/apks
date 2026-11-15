.class public final Lnf4;
.super Lhb2;
.source "SourceFile"


# static fields
.field public static final f:Lnf4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnf4;

    invoke-direct {v0}, Lnf4;-><init>()V

    sput-object v0, Lnf4;->f:Lnf4;

    const-string v0, "getDictOptString"

    sput-object v0, Lnf4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhb2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lnf4;->g:Ljava/lang/String;

    return-object p0
.end method
