.class public Lfreemarker/debug/EnvironmentSuspendedEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final env:Lut1;

.field private final line:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILut1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lfreemarker/debug/EnvironmentSuspendedEvent;->name:Ljava/lang/String;

    iput p3, p0, Lfreemarker/debug/EnvironmentSuspendedEvent;->line:I

    iput-object p4, p0, Lfreemarker/debug/EnvironmentSuspendedEvent;->env:Lut1;

    return-void
.end method


# virtual methods
.method public getEnvironment()Lut1;
    .locals 0

    iget-object p0, p0, Lfreemarker/debug/EnvironmentSuspendedEvent;->env:Lut1;

    return-object p0
.end method

.method public getLine()I
    .locals 0

    iget p0, p0, Lfreemarker/debug/EnvironmentSuspendedEvent;->line:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/debug/EnvironmentSuspendedEvent;->name:Ljava/lang/String;

    return-object p0
.end method
