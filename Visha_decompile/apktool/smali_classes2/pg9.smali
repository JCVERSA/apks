.class public final Lpg9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpg9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpg9;

    invoke-direct {v0}, Lpg9;-><init>()V

    sput-object v0, Lpg9;->a:Lpg9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lsg9;
    .locals 1

    const-string/jumbo p0, "tupdate_sdk"

    invoke-static {p0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object p0

    const-string v0, "getInstance(spName)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
