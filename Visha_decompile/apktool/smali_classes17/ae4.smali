.class public final Lae4;
.super Ljg;
.source "SourceFile"


# static fields
.field public static final g:Lae4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lae4;

    invoke-direct {v0}, Lae4;-><init>()V

    sput-object v0, Lae4;->g:Lae4;

    const-string v0, "getArrayFromArray"

    sput-object v0, Lae4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljg;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lae4;->h:Ljava/lang/String;

    return-object p0
.end method
