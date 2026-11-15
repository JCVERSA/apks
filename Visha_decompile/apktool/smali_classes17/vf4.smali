.class public final Lvf4;
.super Lug;
.source "SourceFile"


# static fields
.field public static final g:Lvf4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvf4;

    invoke-direct {v0}, Lvf4;-><init>()V

    sput-object v0, Lvf4;->g:Lvf4;

    const-string v0, "getIntegerFromArray"

    sput-object v0, Lvf4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lug;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lvf4;->h:Ljava/lang/String;

    return-object p0
.end method
