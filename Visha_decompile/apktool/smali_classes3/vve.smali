.class public final synthetic Lvve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc1;


# static fields
.field public static final synthetic a:Lvve;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lvve;

    invoke-direct {v0}, Lvve;-><init>()V

    sput-object v0, Lvve;->a:Lvve;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lic1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lic1;)Llb;

    move-result-object p0

    return-object p0
.end method
