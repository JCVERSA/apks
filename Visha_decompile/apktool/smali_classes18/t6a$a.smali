.class public final Lt6a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt6a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lt6a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt6a$a;

    invoke-direct {v0}, Lt6a$a;-><init>()V

    sput-object v0, Lt6a$a;->a:Lt6a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsbb;Ljava/util/Collection;Le74;Le74;)Ljava/util/Collection;
    .locals 0

    const-string p0, "currentTypeConstructor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superTypes"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "neighbors"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "reportLoop"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
