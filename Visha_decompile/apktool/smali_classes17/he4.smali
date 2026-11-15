.class public final Lhe4;
.super Lhh;
.source "SourceFile"


# static fields
.field public static final g:Lhe4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhe4;

    invoke-direct {v0}, Lhe4;-><init>()V

    sput-object v0, Lhe4;->g:Lhe4;

    const-string v0, "getArrayOptColor"

    sput-object v0, Lhe4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lhe4;->h:Ljava/lang/String;

    return-object p0
.end method
