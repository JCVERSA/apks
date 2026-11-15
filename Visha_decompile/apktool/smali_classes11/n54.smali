.class public abstract Ln54;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcv4;

.field public static volatile b:Lcv4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln54$a;

    invoke-direct {v0}, Ln54$a;-><init>()V

    sput-object v0, Ln54;->a:Lcv4;

    sput-object v0, Ln54;->b:Lcv4;

    return-void
.end method

.method public static a()Lcv4;
    .locals 1

    sget-object v0, Ln54;->b:Lcv4;

    return-object v0
.end method

.method public static b(Lcv4;)V
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Ln54;->a:Lcv4;

    sput-object p0, Ln54;->b:Lcv4;

    return-void

    :cond_0
    sput-object p0, Ln54;->b:Lcv4;

    return-void
.end method
