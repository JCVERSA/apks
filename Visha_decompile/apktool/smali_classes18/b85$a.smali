.class public final Lb85$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb85;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lb85$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb85$a;

    invoke-direct {v0}, Lb85$a;-><init>()V

    sput-object v0, Lb85$a;->a:Lb85$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm75;Lti8;)Lpf1;
    .locals 0

    const-string p0, "field"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "descriptor"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
