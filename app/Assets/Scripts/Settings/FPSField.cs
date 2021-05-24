﻿using System;
using UnityEngine.UI;
using Reconstruction4D.Settings.BaseField;
using UnityEngine;

namespace Reconstruction4D.Settings
{
    class FPSField : FloatNumberField
    {
        public override string OnSave(Settings settings)
        {
            string result = base.OnSave(settings);
            if(result != String.Empty)
            {
                return result;
            }
            settings.FPS = this.inputInserted;
            return "";
        }

        public override void OnOpen(Settings settings)
        {
            this.inputText.text = Convert.ToString(1 / settings.FPS);
        }
    }
}
