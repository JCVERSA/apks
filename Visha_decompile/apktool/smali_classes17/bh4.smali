.class public final Lbh4;
.super Llh;
.source "SourceFile"


# static fields
.field public static final f:Lbh4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbh4;

    invoke-direct {v0}, Lbh4;-><init>()V

    sput-object v0, Lbh4;->f:Lbh4;

    const-string v0, "getOptStringFromArray"

    sput-object v0, Lbh4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lbh4;->g:Ljava/lang/String;

    return-object p0
.end method
