.class public Lai0;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/a;


# instance fields
.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lai0;->h:Z

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 0

    iget-boolean p0, p0, Lai0;->h:Z

    return p0
.end method
