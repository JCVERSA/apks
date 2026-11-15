.class public final Lx18$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx18;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lx18$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx18$a;

    invoke-direct {v0}, Lx18$a;-><init>()V

    sput-object v0, Lx18$a;->a:Lx18$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxw0;Lsm9;)Lsm9;
    .locals 0

    const-string p0, "classId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "computedType"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
