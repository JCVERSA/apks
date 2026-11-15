.class public abstract Lefa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefa;->a:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public abstract a(IZLjava/lang/String;)Ldfa;
.end method

.method public b()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lefa;->a:Ljava/util/TimeZone;

    return-object p0
.end method
