﻿/**
 * Copyright (c) 2017 Daniel Lo Nigro (Daniel15)
 * 
 * This source code is licensed under the MIT license found in the 
 * LICENSE file in the root directory of this source tree. 
 */

using System;

namespace SecureSign.Web.Models
{
	/// <summary>
	/// Represents a request to sign a file using Authenticode
	/// </summary>
    public class AuthenticodeSignRequest
    {
		/// <summary>
		/// Gets or sets the access token for the request. Will decode to an instance of <see cref="AccessToken"/>.
		/// </summary>
		public string AccessToken { get; set; }
		
		/// <summary>
		/// Gets or sets the URL of the file to download and sign
		/// </summary>
		public Uri ArtifactUrl { get; set; }
    }
}
