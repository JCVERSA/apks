.class public final Ltq6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltq6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ltq6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltq6$a;

    invoke-direct {v0}, Ltq6$a;-><init>()V

    sput-object v0, Ltq6$a;->a:Ltq6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxt1;Lxt1;)Z
    .locals 0

    const-string p0, "what"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "from"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
