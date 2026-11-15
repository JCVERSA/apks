.class public final Luw8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj85;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luw8$a;
    }
.end annotation


# static fields
.field public static final a:Luw8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luw8;

    invoke-direct {v0}, Luw8;-><init>()V

    sput-object v0, Luw8;->a:Luw8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk75;)Li85;
    .locals 0

    const-string p0, "javaElement"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Luw8$a;

    check-cast p1, Lbq8;

    invoke-direct {p0, p1}, Luw8$a;-><init>(Lbq8;)V

    return-object p0
.end method
