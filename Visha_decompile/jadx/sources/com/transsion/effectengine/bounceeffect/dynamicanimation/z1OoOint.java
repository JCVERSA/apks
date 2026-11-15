package com.transsion.effectengine.bounceeffect.dynamicanimation;

import androidx.annotation.FloatRange;

public final class z1OoOint {
    public double z1OoObyte;
    public double z1OoOcase;
    public double z1OoOchar;
    public double z1OoOint;
    public double z1OoOnew;
    public double z1OoOtry;
    public double z1OoOdo = Math.sqrt(1500.0d);
    public double z1OoOif = 0.5d;
    public boolean z1OoOfor = false;
    public final DynamicAnimation.z1OoOcatch z1OoOelse = new DynamicAnimation.z1OoOcatch();

    public z1OoOint(float f) {
        this.z1OoOchar = f;
    }

    public final z1OoOint z1OoOdo(@FloatRange(from = 0.0d) float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.z1OoOif = f;
        this.z1OoOfor = false;
        return this;
    }

    public final z1OoOint z1OoOif(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.z1OoOdo = Math.sqrt(f);
        this.z1OoOfor = false;
        return this;
    }

    public final DynamicAnimation.z1OoOcatch z1OoOdo(double d, double d2, long j) {
        double dCos;
        double dPow;
        if (!this.z1OoOfor) {
            if (this.z1OoOchar == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d3 = this.z1OoOif;
            if (d3 > 1.0d) {
                double d4 = this.z1OoOdo;
                this.z1OoOtry = (Math.sqrt((d3 * d3) - 1.0d) * d4) + ((-d3) * d4);
                double d5 = this.z1OoOif;
                double d6 = this.z1OoOdo;
                this.z1OoObyte = ((-d5) * d6) - (Math.sqrt((d5 * d5) - 1.0d) * d6);
            } else if (d3 >= 0.0d && d3 < 1.0d) {
                this.z1OoOcase = Math.sqrt(1.0d - (d3 * d3)) * this.z1OoOdo;
            }
            this.z1OoOfor = true;
        }
        double d7 = j / 1000.0d;
        double d8 = d - this.z1OoOchar;
        double d9 = this.z1OoOif;
        if (d9 > 1.0d) {
            double d10 = this.z1OoObyte;
            double d11 = ((d10 * d8) - d2) / (d10 - this.z1OoOtry);
            double d12 = d8 - d11;
            dPow = (Math.pow(2.718281828459045d, this.z1OoOtry * d7) * d11) + (Math.pow(2.718281828459045d, d10 * d7) * d12);
            double d13 = this.z1OoObyte;
            double dPow2 = Math.pow(2.718281828459045d, d13 * d7) * d12 * d13;
            double d14 = this.z1OoOtry;
            dCos = (Math.pow(2.718281828459045d, d14 * d7) * d11 * d14) + dPow2;
        } else if (d9 == 1.0d) {
            double d15 = this.z1OoOdo;
            double d16 = (d15 * d8) + d2;
            double d17 = (d16 * d7) + d8;
            double dPow3 = Math.pow(2.718281828459045d, (-d15) * d7) * d17;
            double dPow4 = Math.pow(2.718281828459045d, (-this.z1OoOdo) * d7) * d17;
            double d18 = -this.z1OoOdo;
            dCos = (Math.pow(2.718281828459045d, d18 * d7) * d16) + (dPow4 * d18);
            dPow = dPow3;
        } else {
            double d19 = 1.0d / this.z1OoOcase;
            double d20 = this.z1OoOdo;
            double d21 = ((d9 * d20 * d8) + d2) * d19;
            double dSin = ((Math.sin(this.z1OoOcase * d7) * d21) + (Math.cos(this.z1OoOcase * d7) * d8)) * Math.pow(2.718281828459045d, (-d9) * d20 * d7);
            double d22 = this.z1OoOdo;
            double d23 = this.z1OoOif;
            double d24 = (-d22) * dSin * d23;
            double dPow5 = Math.pow(2.718281828459045d, (-d23) * d22 * d7);
            double d25 = this.z1OoOcase;
            double dSin2 = Math.sin(d25 * d7) * (-d25) * d8;
            double d26 = this.z1OoOcase;
            dCos = (((Math.cos(d26 * d7) * d21 * d26) + dSin2) * dPow5) + d24;
            dPow = dSin;
        }
        DynamicAnimation.z1OoOcatch z1ooocatch = this.z1OoOelse;
        z1ooocatch.z1OoOdo = (float) (dPow + this.z1OoOchar);
        z1ooocatch.z1OoOif = (float) dCos;
        return z1ooocatch;
    }
}
