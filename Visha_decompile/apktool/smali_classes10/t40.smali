.class public abstract Lt40;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:Lv40;


# direct methods
.method public constructor <init>(ZLv40;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Lt40;->c:Lv40;

    return-void
.end method


# virtual methods
.method public b()Lv40;
    .locals 0

    iget-object p0, p0, Lt40;->c:Lv40;

    return-object p0
.end method
